appURL = "https://shrouded-atoll-12007.herokuapp.com/jobs"

chromePath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

set objShell = CreateObject("Shell.Application")
objShell.ShellExecute chromePath, appURL, "", "", 1

