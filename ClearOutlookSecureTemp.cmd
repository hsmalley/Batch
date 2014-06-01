@echo off
:: Clear Outlook Secure Temp
:: Works on Windows XP
:: Office XP & 2003
if exist "%userprofile%\Local Settings\Temporary Internet Files\OLK*" (cd "%userprofile%\Local Settings\Temporary Internet Files\OLK*") else (goto END)
echo test!
REM del *.* /s /f /q
REM del *.* /ah /f /q
REM del *.* /ar /f /q
REM del *.* /aa /f /q
REM del *.* /as /f /q
goto END
:END
REM exit
echo done!