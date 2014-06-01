@ECHO OFF
::::::::::::::::::::::::::::::::
:: Enable Domain Network Mapping
:: Created by Hugh Smalley
:: hsmalley@gmail.com
:: CC-BY-SA
::::::::::::::::::::::::::::::::
ECHO THIS WILL ENABLE NETWORK MAPPING ON A DOMAIN LEVEL.
ECHO THIS NEEDS ADMIN ACCESS TO A WORKSTATION TO WORK.
ECHO OR YOU COULD USE GROUP POLICY
ECHO.
ECHO EXIT IF YOU DO NOT WISH TO CONTINUE
ECHO.
PAUSE > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\LLTD /f /v EnableLLTDIO /t reg_dword /d 1 > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\LLTD /f /v AllowLLTDIOOnDomain /t reg_dword /d 1 > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\LLTD /f /v EnableRspndr /t reg_dword /d 1 > NUL
REG ADD HKLM\Software\Policies\Microsoft\Windows\LLTD /f /v AllowRspndrOnDomain /t reg_dword /d 1 > NUL
ECHO DONE.