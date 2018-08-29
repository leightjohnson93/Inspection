appURL = "http://10.11.40.130:4000/jobs"

chromePath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

set objShell = CreateObject("Shell.Application")
objShell.ShellExecute chromePath, appURL, "", "", 1
