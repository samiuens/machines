# 🔐 BitLocker Setup
*Built-in hardware encryption*

## 1. Preparation
- Install a copy of windows on another drive on the target computer
- Boot into the Windows installation once finished
- Install [Samsung Magician](https://semiconductor.samsung.com/consumer-storage/support/tools/)
- Complete the following steps in the software:
  - Enable "Encrypted Drive"
  - *If the drive shows "enabled" or "ready to enable" already, a secure erase is needed* (like in the next step)
- Now you have to "Secure Erase" the drive. This is possible via the bios or the Samsung Secure Erase (found in the Magician App)
- The hardware encryption is now ready to be activated!

## 2. Windows installation
- **Before** booting into the windows installation, disable *Block SID*
  - most likely to be found, under the TPM Section in the bios
- On the next boot, a POST screen will alert you. "A Configuration Change was requested issuing a Block SID command". Simply accept this notice, and proceed.

## 3. After installation
- Check status of encrypted drive in [Samsung Magician](https://semiconductor.samsung.com/consumer-storage/support/tools/); should be **activated**
- After the successful installation of Windows BitLocker has to be forced to make use of hardware encryption via group policy.
  - Open "Group Policies"
  - `Computer configuration > Administrative Templates > Windows Components > BitLocker > System Drive > Administrative Configure Use of Hardware-Based Encryption for Fixed Data Drives`
  - Activate the policy and disable "Fallback to Software Encryption" on the left pane.

## 4. Activation
- Now open BitLocker and encrypt the system drive.
- **Important:** Save the encryption key somewhere safe!
