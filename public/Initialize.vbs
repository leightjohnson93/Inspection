Dim g_oSB : Set g_oSB = CreateObject("System.Text.StringBuilder")
Dim dt : dt = now()
Function sprintf(sFmt, aData)
   g_oSB.AppendFormat_4 sFmt, (aData)
   sprintf = g_oSB.ToString()
   g_oSB.Length = 0
End Function


If Wscript.ScriptName = "Initialize.vbs" Then Wscript.Quit

wbName = Wscript.ScriptName
arrName = Split(wbName, " ", 3)
WV = arrName(1)
Description = Left(Split(arrName(2), "(")(0), Len(arrName(2))-4)
TimeStamp = sprintf("{0:yyyyMMdd}", Array(dt))
TestFolderName = TimeStamp & " " & Trim(Description) & " WV" & WV

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder("V:\QC Vermont\Incoming Lens Inspection")
Set subfolders = objFolder.subfolders
TestFolderPath = "V:\QC Vermont\Incoming Lens Inspection\" & TestFolderName
For Each subfolder In subfolders
    If InStr(subfolder, WV) > 0 Then
        MsgBox "A folder for WV" & WV & " alread exists."
	Wscript.Quit
    End If
Next
objFSO.copyFolder "V:\QC Vermont\Incoming Lens Inspection\Lens Testing Template", TestFolderPath



Dim shell
Set shell = wscript.CreateObject("Shell.Application")
shell.Open TestFolderPath
Wscript.Quit