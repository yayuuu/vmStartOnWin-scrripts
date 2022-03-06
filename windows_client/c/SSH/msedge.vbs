Set objShell = CreateObject("Wscript.Shell")
Set args = Wscript.Arguments
For Each arg In args
objShell.Run("powershell -windowstyle hidden -executionpolicy bypass -noninteractive -file C:\SSH\msedge.ps1 " & arg),0
Next
