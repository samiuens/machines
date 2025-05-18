get_os() {
    case "$OSTYPE" in
        darwin*)
            echo "darwin"
            ;;
        linux*)
            if [ -f /etc/os-release ]; then
                . /etc/os-release
                echo $NAME
            else
                echo "linux"
            fi
            ;;
    esac
}

input() {
    prompt=$1
    input=""
    read -p "$prompt" input
    echo "$input"
}

###

update()
{
    sudo nix flake update --experimental-features 'nix-command flakes'
    os=$(get_os)
    if [ "$os" == "darwin" ]; then
        brew update
        brew upgrade
        brew upgrade --cask $(brew list --cask) --greedy
    fi
    clean
}

rebuild()
{
    method=$1
    hostname=$2

    os=$(get_os)
    if [ "$os" == "darwin" ]; then
        sudo darwin-rebuild $method --flake .#$hostname --show-trace
    else
        sudo nixos-rebuild --flake .#$hostname $method --show-trace
    fi
}

clean()
{
    sudo nix-collect-garbage
    sudo nix profile wipe-history --profile /nix/var/nix/profiles/system
    sudo nix store gc
}

generations()
{
    nix profile history --profile /nix/var/nix/profiles/system
}

provision()
{
    os=$(get_os)
    hostname=$(input "please provide the hostname for this machine: ")
    if [ -f ./systems/$hostname ]; then
        echo "no config exists, for the provided hostname..."
    fi

    if [ "$os" == "darwin" ]; then
        if [ -f /etc/samiarda/provision.part1 ]; then
            if [ -f ./darwin/$hostname ]; then
              echo "this host doesn't exist..."
            fi
            [ -f /etc/nix/nix.conf ] && sudo rm /etc/nix/nix.conf
            update
            nix run nix-darwin --experimental-features 'nix-command flakes' -- switch --flake .#$hostname --show-trace
            sudo rm /etc/samiarda/provision.part1
        else
            xcode-select --install
            read -n 1 -s -r -p "press any key to continue..."
            softwareupdate --install-rosetta --agree-to-license
            curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
            sudo mkdir /etc/samiarda && sudo touch /etc/samiarda/provision.part1
            echo "please restart the shell to activate nix..."
        fi
    else
        rm -r ./systems/$hostname/hardware-configuration.nix
        nixos-generate-config --show-hardware-config > "./systems/$hostname/hardware-configuration.nix"
        update
        rebuild switch $hostname
    fi
}

hardwareconfig()
{
    hostname=$(input "please provide the hostname for this machine: ")
    rm -r ./systems/$hostname/hardware-configuration.nix
    nixos-generate-config --show-hardware-config > "./systems/$hostname/hardware-configuration.nix"
}

sshkey()
{
    application=$(input "please provide the ssh application: ")
    sn=$(input "please provide the yubikey serial number: ")
    keylabel=$(input "please provide the yubikey key label: ")
    ssh-keygen -t ed25519-sk -O resident -O verify-required -O application=ssh:$application -C "$application-$(date +'%d/%m/%Y')-$sn ($keylabel)" -f ./secrets/$application-$sn
}

if [ $# -eq 0 ]; then
    rebuild switch
else
    case $1 in
        switch) rebuild switch ;;
        boot) rebuild boot ;;
        update) update ;;
        clean) clean ;;
        provision) provision ;;
        hardware) hardwareconfig ;;
        code) code . ;;
        cd) exit ;;
        *) echo "unknown function. please review the syntax!" ;;
    esac
fi
