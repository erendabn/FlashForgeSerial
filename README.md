# Flashforge AD5M Serial Problem for kcm set

  This script was created to automate the ID and path connection of serial connections on Flashforge AD5M 3D printers.
 To use this script, you must have “Klipper Mod for Flashforge Adventurer 5M (Pro)” installed.  

---

> [!WARNING]
> Please note that “git” must be installed.

> [!CAUTION]
> *Tested with “klipper mod” made with Buildroot*

---
# Installation
After connecting your printer to the internet, connect to it from your computer using ssh.  
`ssh root@192.168.1.x`  
password is `klipper`  

After connecting, download the script with git clone.  
`git clone https://github.com/erendabn/FlashForgeSerial.git`  

Go into the folder and run the script.  
`cd FlashForgeSerial`  
`sh serialscript.sh`  

After this, your USB devices should be defined as id and path. To check, type the commands  
`ls /dev/serial/by-id`  
`ls /dev/serial/by-path`  
and check the output.
If they appear, perform the final check by unplugging and turning off your printer, then plugging it back in and turning it on, and check again.
