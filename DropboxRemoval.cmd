@ECHO OFF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::: SETUP DATE FOR LOGGING ERRORS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::SETUPDATE
::FOR /F "TOKENS=2,3,4 DELIMS=-/.: " %%F IN ("%DATE%") DO SET FORMATTED_DATE=%%F-%%G-%%H
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::: Dropbox Detection & Removal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::DROPBOX
::IF EXIST %USERPROFILE%\APPDATA\ROAMING\DROPBOX\BIN\DROPBOX.EXE (
::ECHO USER %USERNAME% ON %COMPUTERNAME% - DROPBOX DETECTED - %FORMATTED_DATE% >> \\SERVER\LOGS$\DROPBOX.TXT
::%USERPROFILE%\APPDATA\ROAMING\DROPBOX\BIN\DROPBOXUNINSTALLER.EXE /S
::)@ECHO OFF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::: SETUP DATE FOR LOGGING ERRORS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::SETUPDATE
::FOR /F "TOKENS=2,3,4 DELIMS=-/.: " %%F IN ("%DATE%") DO SET FORMATTED_DATE=%%F-%%G-%%H
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::: Dropbox Detection & Removal
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::DROPBOX
::IF EXIST %USERPROFILE%\APPDATA\ROAMING\DROPBOX\BIN\DROPBOX.EXE (
::ECHO USER %USERNAME% ON %COMPUTERNAME% - DROPBOX DETECTED - %FORMATTED_DATE% >> \\SERVER\LOGS$\DROPBOX.TXT
::%USERPROFILE%\APPDATA\ROAMING\DROPBOX\BIN\DROPBOXUNINSTALLER.EXE /S
::)
