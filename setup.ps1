Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}
Invoke-WebRequest https://github.com/rucaptcha/rucaptcha-bot/releases/download/win32-ia32-prod-v2.1.1/CaptchaBotRS.Setup.2.1.1.exe -OutFile CaptchaBotRS.Setup.2.1.1.exe
copy CaptchaBotRS.Setup.2.1.1.exe C:\Users\Public\Desktop\CaptchaBotRS.Setup.2.1.1.exe
