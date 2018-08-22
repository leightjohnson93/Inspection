Attribute VB_Name = "CreateLot"
Public Sub ParseRSSModule()
Dim Msg         As Outlook.MailItem
Dim HTML        As Object: Set HTML = CreateObject("htmlfile")
Dim element     As Object
Dim elements    As Object
Dim CoatDate    As Date
Start:

appURL = "https://shrouded-atoll-12007.herokuapp.com/jobs"
newURL = appURL & "/new"
Set myNamespace = Application.GetNamespace("MAPI")
Set Inbox = myNamespace.GetDefaultFolder(olFolderInbox).Folders("Lot Tracker").Items

UploadCount = 0
MsgCount = Inbox.Count
If MsgCount = 0 Then
    MsgBox "Lot Tracker folder is empty. There are no new lots to create.", vbExclamation, "Folder Empty"
    Exit Sub
End If

For Each Msg In Inbox
    HTML.Body.innerHTML = Msg.HTMLBody
    Set elements = HTML.getElementsByTagName("td")
    i = 0
    For Each element In elements
        i = i + 1
        If i = 17 Then WV = Trim(element.innerText)
        If i = 20 Then Part = Trim(element.innerText)
        If i = 26 Then LotQuantity = CInt(Trim(element.innerText))
        If i = 29 Then SampleQuantity = Trim(element.innerText)
        If i = 32 Then Bin = Trim(element.innerText)
        If i = 35 Then CoatDate = Trim(Split(element.innerText, " ", 2)(0))
        If i = 35 Then CoatTime = Trim(Split(element.innerText, " ", 2)(1))
    Next
    
    If InStr(WV, "WV") > 0 Then WV = Split(WV, "WV")(1)
    
    On Error GoTo ErrHandler
        Set IE = CreateObject("InternetExplorer.Application")
    On Error GoTo 0
    
    IE.Visible = False
    IE.navigate newURL
    
    While IE.Busy
        DoEvents
    Wend

    On Error Resume Next
        If IE.document.getElementById("job_id") Is Nothing Then
            Result = MsgBox("Outlook was unable to reach the applicaton!" & vbNewLine & vbNewLine & "This can sometimes be caused by previous instances of 'IExplore.exe' open in the background." & vbNewLine & vbNewLine & "Would you like to kill all IExplore processes and try again?", vbYesNo + vbCritical, "Server Error")
            If Result = 6 Then
                FindAndTerminate "iexplore.exe"
                GoTo Start
            End If
            IE.Quit
            Set IE = Nothing
            Exit Sub
        End If
    On Error GoTo 0


    IE.document.getElementById("job_id").Value = WV
    IE.document.getElementById("job_part_id").Value = Part
    IE.document.getElementById("job_lot_quantity").Value = LotQuantity
    IE.document.getElementById("job_test_quantity").Value = SampleQuantity
    IE.document.getElementById("job_bin").Value = Bin
    IE.document.getElementById("job_coat_date").Value = CoatDate
    IE.document.getElementById("job_coat_time").Value = CoatTime
    IE.document.getElementById("job_lot_complete").Value = "Pending"
    
    IE.document.getElementById("save").Click
    
    UploadCount = UploadCount + 1
    IE.Quit
    Set IE = Nothing

    Dim currenttime As Date
    currenttime = Now
    Do Until currenttime + TimeValue("00:00:1") <= Now
    Loop
    
Next
    
total_messages = Inbox.Count
For i = 1 To total_messages
    message_index = total_messages - i + 1
    Set oMessage = Inbox.Item(message_index)
    oMessage.Delete
    Set oMessage = Nothing
Next

If UploadCount > 1 Then
    Result = MsgBox("Attempted to create " & UploadCount & " lots." & vbNewLine & vbNewLine & "Would you like to launch the application?", vbYesNo + vbQuestion, "Status Update")
ElseIf UploadCount = 1 Then
    Result = MsgBox("Attempted to create " & UploadCount & " lot." & vbNewLine & vbNewLine & "Would you like to launch the application?", vbYesNo + vbQuestion, "Status Update")
Else
    Result = MsgBox("Nothing was created." & vbNewLine & vbNewLine & "Would you like to launch the application?", vbYesNo + vbExclamation, "Status Update")
End If

If Result = 7 Then Exit Sub

chromePath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
If Len(Dir(chromePath)) = 0 Then chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

shell (chromePath & " -url " & appURL)

ErrHandler: 'Catch system shutdown already scheduled error

    If Err.Number = &H800704A6 Then 'Put a breakpoint here to make sure this is the ACTUAL VBA error number and not the ActiveX one. You might need to check against the Err.LastDllError property
        Resume
    End If

End Sub

Sub FindAndTerminate(ByVal strProcName As String)
Dim objWMIService, objProcess, colProcess
Dim strComputer, strList
strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\cimv2")
Set colProcess = objWMIService.ExecQuery _
("Select * from Win32_Process Where Name = '" & strProcName & "'")
If colProcess.Count > 0 Then
For Each objProcess In colProcess
objProcess.Terminate
Next objProcess
End If
End Sub

