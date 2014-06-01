@echo off

GOTO %~sx1
:.ps1
  cd "%~d1%~p1"
  powershell -ExecutionPolicy Unrestricted -File "%~n1%~sx1"
  GOTO end
:.rb
 ruby "%~f1"
 GOTO end
:.php
 php "%~f1"
 GOTO end

:end

pause