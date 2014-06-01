@ECHO OFF
::::::::::::::::::::::::::::::::
:: Enable Domain WinRM
:: Created by Hugh Smalley
:: hsmalley@gmail.com
:: CC-BY-SA
::::::::::::::::::::::::::::::::
ECHO THIS WILL ENABLE WINRM ON A DOMAIN LEVEL.
ECHO THIS NEEDS ADMIN ACCESS TO A WORKSTATION TO WORK.
ECHO OR YOU COULD USE GROUP POLICY
ECHO.
ECHO EXIT IF YOU DO NOT WISH TO CONTINUE
PAUSE > NUL
WINRM QC -QUIET > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\WinRM\Service /f /v AllowAutoConfig /t reg_dword /d 1 > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\WinRM\Service /f /v IPv4Filter /t reg_sz /d * > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\WinRM\Service /f /v IPv6Filter /t reg_sz /d * > NUL
ECHO.
ECHO IGNORE ANY ACCESS DENIED ERRORS THIS SCRIPT FIXES THOSE ERRORS.
ECHO DONE.