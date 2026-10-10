Output docs/images/cli-demo.gif
Require python
Set Shell "powershell"
Set Width 1000
Set Height 650
Set FontSize 20
Set TypingSpeed 35ms
Set Framerate 10
Hide
Type "$work = & ./docs/demo/prepare.ps1; Set-Location $work; function prompt { 'demo> ' }; Clear-Host"
Enter
Sleep 1s
Show
Type "python example.py"
Enter
Sleep 1s
Type "my-tool"
Enter
Sleep 1s
Down
Sleep 500ms
Enter
Sleep 1s
Enter
Sleep 3s
