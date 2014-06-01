'Run Batch file from VBS

Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run("%comspec% /K UPDATEXPHAL.CMD"), 1, True