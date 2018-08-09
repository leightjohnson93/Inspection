TestFolderName = Trim(Split(Left("20180809 SF Lens SC Rg Smk AF/AR - WV 4 Part 2.vbs", Len("20180809 SF Lens SC Rg Smk AF/AR - WV 4 Part 2.vbs")-4),"(")(0))
TestQuantity = 5

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

If TestQuantity > 4 Then
For i = 5 to TestQuantity
  objFSO.CreateFolder(TestFolderPath & "\Fog " & CStr(i))
Next
End If


Dim shell
Set shell = wscript.CreateObject("Shell.Application")
shell.Open TestFolderPath
Wscript.Quit