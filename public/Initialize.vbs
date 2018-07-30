TestFolderName = Trim(Split(Left(Wscript.ScriptName, Len(Wscript.ScriptName)-4),"(")(0))

If InStr(TestFolderName, "WV") Then
	WV = Mid(TestFolderName, InStr(TestFolderName, "WV"))
Else
	WV = Mid(TestFolderName, InStr(TestFolderName, "PV"))
End If

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder("V:\QC Vermont\Incoming Lens Inspection")
Set subfolders = objFolder.subfolders
TestFolderPath = "V:\QC Vermont\Incoming Lens Inspection\" & TestFolderName

For Each subfolder In subfolders
    If InStr(subfolder, WV) > 0 Then
        MsgBox "A folder for " & WV & " already exists."
	Wscript.Quit
    End If
Next

objFSO.copyFolder "V:\QC Vermont\Incoming Lens Inspection\Lens Testing Template", TestFolderPath

objFSO.MoveFile TestFolderPath & "\Optics.xlsm", TestFolderPath & "\Optics - " & WV & ".xlsm"
objFSO.MoveFile TestFolderPath & "\Fog.xlsm", TestFolderPath & "\Fog - " & WV & ".xlsm"
objFSO.MoveFile TestFolderPath & "\F-96 MCEPS Ballistic Data.xlsx", TestFolderPath & "\F-96 MCEPS Ballistic Data - " & WV & ".xlsx"

Dim shell
Set shell = wscript.CreateObject("Shell.Application")
shell.Open TestFolderPath
Wscript.Quit