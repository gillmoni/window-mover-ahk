; Set the default browser to Google Chrome
global DefaultBrowser := "Chrome.exe"

GetDefaultBrowser() {
    ; Check if Google Chrome is installed
    If FileExist("C:\Program Files\Google\Chrome\Application\chrome.exe") {
        ; Set DefaultBrowser to Google Chrome
        global DefaultBrowser := "Chrome.exe"
        return %DefaultBrowser%
    }
    ; Check if Microsoft Edge is installed
    else if FileExist("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe") {
        ; Set DefaultBrowser to Microsoft Edge
        global DefaultBrowser := "msedge.exe"
        return %DefaultBrowser%
    }
}

; Includes funtions to launch various apps etc
;----------------------------------------------

LaunchWeb() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser%
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchYoutubeIcognito() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% -incognito "https://youtube.com/"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------
LaunchYoutube() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://youtube.com/"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchASCIL() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://www.sierrachart.com/index.php?page=doc/Contents.php#AdvancedCustomStudySystemInterfaceandLanguage"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchASCILIcognito() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% -incognito "https://www.sierrachart.com/index.php?page=doc/Contents.php#AdvancedCustomStudySystemInterfaceandLanguage"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchBlossom() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://www.blossomfoundation.com/spring-2023-kriya-registration"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

;----------------------------------------------

LaunchHouseSigma() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://housesigma.com/"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchDevaGuru() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://deva.guru"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchGmail() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://gmail.com/"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchChatgpt() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://chat.openai.com/chat"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchOdin() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://www.theodinproject.com/dashboard"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchPomodoro() {
    DefaultBrowser := GetDefaultBrowser()
    SetTitleMatchMode, RegEx
    
    if WinExist(".*Weekly To Do List Template.*Matrix.*Priority Matrix")
    {
        WinActivate, .*WeQekly To Do List Template.*Matrix.*Priority Matrix
        WinWaitActive, .*Weekly To Do List Template.*Matrix.*Priority Matrix, 3
    }
    else if WinExist("Home - Priority Matrix")
    {
        WinActivate, Home - Priority Matrix
        WinWaitActive, Home - Priority Matrix, 3
    
    } else {
        ;LaunchPriorityMatrix()
    }
    
    if !WinExist("Pomodor") {
        Run, %DefaultBrowser% --app="https://pomodor.app/timer"
    } 
    else {        
        WinActivate, .*Pomodor.*
        WinWaitActive, .*Pomodor.* , 3
    }

    Sleep, 750    
    return
}
;----------------------------------------------

LaunchPriorityMatrix() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --app="https://sync.appfluence.com/office365/app/index/app/home/agenda/"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchFireshipIO() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://fireship.io/courses"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchNeetcodeIO() {
    global DefaultBrowser := GetDefaultBrowser()
    Run, %DefaultBrowser% --new-window "https://neetcode.io/courses"
    Sleep, 750
    WinActivate, %DefaultBrowser%
    return
}
;----------------------------------------------

LaunchCygwin() {
    IfWinNotExist, AHK_Class mintty
        Run, "C:\cygwin64\bin\mintty.exe"
    Else
        WinActivate, AHK_Class mintty
        Sleep, 750
    
    WinActivate, mintty.exe
    return
}
;----------------------------------------------

LaunchOutlook() {
    IfWinNotExist, AHK_Class rctrl_renwnd32
        Run, outlook
        ; Run, "C:\Program Files\Microsoft Office\root\Office16\Outlook.exe"
    Else
        WinActivate, AHK_Class rctrl_renwnd32
    Sleep, 750
    WinActivate, Outlook.exe
    return
}
;----------------------------------------------

LaunchTeams() {
; Note: it can also be checked with ProcessName
; Seems like it'd much easier, coz user won't have to look for class_names
    
    IfWinNotExist, Teams.exe
        Run, "C:\Users\%A_UserName%\AppData\Local\Microsoft\Teams\current\Teams.exe"
    Else
        WinActivate, AHK_Class Teams.exe
 
    Sleep, 750
    WinActivate, Teams.exe
    return
}
;----------------------------------------------

LaunchEmacs() {
    IfWinNotExist, AHK_Class Emacs
        Run, "C:\Program Files\Emacs\x86_64\bin\runemacs.exe"
    Else
        WinActivate, AHK_Class Emacs
    Sleep, 750
    WinActivate, emacs.exe
    return

}
;----------------------------------------------

LaunchIDE() {
    IfWinNotExist, AHK_Class code.exe
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\code.exe"
    Else
        WinActivate, AHK_Class PX_WINDOW_CLASS
    Sleep, 750
    WinActivate, code.exe
    return
}
;----------------------------------------------

LaunchEditor() {
    IfWinNotExist, AHK_Class sublime_text.exe
        Run, "C:\Program Files\Sublime Text\sublime_text.exe"
    Else
        WinActivate, AHK_Class PX_WINDOW_CLASS
    Sleep, 750
    WinActivate, sublime_text.exe
return
}
;----------------------------------------------

LaunchUG() {
    IfWinNotExist, AHK_Class SUMATRA_PDF_FRAME
        ; This is executing SumatraPDF from the PATH folder
        Run, "spdf.bat"
    Else
        WinActivate, AHK_Class SUMATRA_PDF_FRAME

    Sleep, 750
    WinActivate, sublime_text.exe
    return
}

;----------------------------------------------

LaunchDiscordPTB() {
    ;if FileExist("C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk")
    IfWinNotExist, AHK_Class DiscordPTB.exe
        Run, "C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk"
    Else
        WinActivate, AHK_Class Discord.exe
    Sleep, 750
    WinActivate, DiscordPTB.exe
return
}
;----------------------------------------------

LaunchDiscord() {
    IfWinNotExist, AHK_Class Discord.exe
        Run, "C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    Else
        WinActivate, AHK_Class Discord.exe
    Sleep, 750
    WinActivate, Discord.exe
    return
}
;----------------------------------------------

LaunchGNS() {
    if FileExist("C:\Program Files\GNS3\GNS3.exe")
       IfWinNotExist, AHK_Class Qt5152QWindowIcon
            Run, "C:\Program Files\GNS3\GNS3.exe"
        Else
            WinActivate, AHK_Class GNS3.exe
    Sleep, 750
    WinActivate, GNS3.exe
    return
}
;----------------------------------------------

LaunchPL() {
    IfWinNotExist, AHK_Class PL9.exe
        Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Parashara's Light 9 B3\Parashara's Light 9 CVR.lnk"
    Else
        WinActivate, AHK_Class PL9.exe
    Sleep, 750
    WinActivate, PL9.exe
    return

}
;----------------------------------------------

LaunchNotepadPlusPlus() {
    IfWinExist, AHK_CLASS Notepad++
        WinActivate, ahk_exe notepad++.exe
        Send, ^f
        CoordMode, Mouse, Screen
        MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
        sleep 50
        Click
        ;Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
        Send, !d
    return
}
;----------------------------------------------

MakeNotepadPlusPlusSplit() {
    IfWinExist, AHK_CLASS Notepad++
    WinActivate, ahk_exe notepad++.exe
    Send, ^f
    CoordMode, Mouse, Screen
    MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
    sleep 50
    Click
    ;
    Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
    Send, !o
    return

}
;----------------------------------------------

HideSysTray() {
    IF HideTray := !HideTray
    {
        WinHide, ahk_class Shell_TrayWnd
        WinHide, ahk_class Shell_SecondaryTrayWnd
    }
    Else
    {
        WinShow, ahk_class Shell_TrayWnd
        WinShow, ahk_class Shell_SecondaryTrayWnd
    }
    Return

}
;----------------------------------------------

LaunchWSL2() {
    Run, wt -p "WSL2 (Ubuntu)"
    Sleep, 750
    WinActivate, WSL2
    return
}
;----------------------------------------------

LaunchWSL1() {
    Run, wt ;start terminal
    Sleep, 750 ;wait for newest window to open
    WinActivate, WSL1 ;just use a string that matches the start of the terminal window
    return
}
;----------------------------------------------

LaunchPowerShell(){
    ;/c/Windows/System32/WindowsPowerShell/v1.0/powershell
    Run, wt -p "PowerShell 5"
    Sleep, 750
    WinActivate, PowerShell
    return
}
;----------------------------------------------

LaunchAHKSpy(){
    AHK_FILE_WINDOWSPY := 0xFF7A ; 65402
    DetectHiddenWindows On
    SendMessage 0x111, AHK_FILE_WINDOWSPY,,, ahk_id %A_ScriptHwnd%
    Sleep, 750
return
}
;----------------------------------------------

ReloadExplorer() {
    Runwait, taskkill /F /IM Explorer.exe
    Runwait, taskkill /F /IM AltDrag.exe
    run, explorer.exe
    run, C:\Apps\AltDrag\AltDrag.exe
    Reload
    return
}

;----------------------------------------------

ReloadSynergy() {
    MsgBox, 64, Reloading Synergy, Reloading synergy, 1
    
    if FileExist("C:\Program Files\Synergy\run_synergy.vbs")
        ; Find the PID of the process by name
        pid := 0
        Process, Exist, synergy.exe
        pid := ErrorLevel

        ; If the process exists, close it
        if (pid > 0) {
            Process, Close, %pid%
        }

        ; Find the PID of another process by name
        pid2 := 0
        Process, Exist, synergys.exe
        pid2 := ErrorLevel

        ; If the process exists, close it
        if (pid2 > 0) {
            Process, Close, %pid2%
        }

    Run, "C:\Program Files\Synergy\run_synergy.vbs"
    Run, "C:/Users/Test/AppData/Roaming/Synergy/Synergy/my_synergys.conf"
    return
}

;----------------------------------------------

ReloadScript() {
    MsgBox, 48, Reload Warning, Reloading script, 0.5
    Reload
    return
}

;----------------------------------------------

CreateNewTextFile() {
    MsgBox, 48, Create New README, Creating README, 0.2
    ;System is very picky, DO NOT use explorer.exe process, but only ClassName
    IfWinExist, AHK_CLASS CabinetWClass
    {
        ; MsgBox, 48, Activate Explorer, Activate Explorer, 0.5
        WinActivate
        
        WinGetActiveTitle, Title
        ; Check if it is correct place to make folder, i.e NOT 'This PC'
        if !InStr(Title, "This PC")  {
            Send, +{F10} ; Send RightClick
            Send, {Up}{Up}{Right}{Up}{Up}{Up}{Enter} ; Navigate to Menu
            Send, README{Enter} ; Set filename ad README
            return
        }
        else {
            MsgBox, 48, Cant create README, Not correct window, 0.5
            return
        }
    }
    else
    {    MsgBox, 48, Cant create README, Explorer not open, 0.5
        return
    }
    
}
;----------------------------------------------

CreateNewTextFileOLD() {
    MsgBox, 48, Create New README, Creating README, 0.2
    ;System is very picky, DO NOT use explorer.exe process, but only ClassName
    IfWinExist, AHK_CLASS CabinetWClass
    {
        MsgBox, 48, Activate Explorer, Activate Explorer, 0.5
        WinActivate
        Send, +{F10} ; Send RightClick
        Send, {Up}{Up}{Right}{Up}{Up}{Up}{Enter} ; Navigate to Menu
        Send, README{Enter} ; Set filename ad README
        return
    }
    else
    {    MsgBox, 48, Cant create README, Explorer not open, 0.5
        return
    }
    
}
;----------------------------------------------

SendRightClick()
{   
    If WinActive("ahk_exe Discord.exe")
        MsgBox, 48, Random Box, Random message disappears, 0.01
    Else
        Send, {AppsKey}
    return
}
;----------------------------------------------

Xshell_send_same_color() {
    If WinActive("ahk_exe xshell.exe")
        Send, ^{F9} ; Toggle Broadcast key
    return
}
Xshell_toggle_broadcast() {
    If WinActive("ahk_exe xshell.exe")
        Send, ^{F11} ; Toggle Broadcast key
    return
}
;----------------------------------------------

Xshell_no_broadcast() {
    If WinActive("ahk_exe xshell.exe")
        MsgBox, 48, Doing Nothing, XShell, 0.1
        Send, {!tkr}
        sleep, 0.3
    return
}
;----------------------------------------------

Xshell_broadcast() {
    If WinActive("ahk_exe xshell.exe")
        MsgBox, 48, Doing Nothing, XShell, 0.1
        sleep, 0.3
        Send, {!tks}
        sleep, 0.3
    return
}
;----------------------------------------------

MetaTrader_rectangle() {
    If WinActive("ahk_exe terminal.exe")
        MsgBox, 48, Doing Nothing, SkipMetaTrader, 0.1
        ;sleep, 0.3
    Else
        Send, {!r}
    return

}

MetaTrader_horizontalline() {
    If WinActive("ahk_exe terminal.exe")
        sleep, 0.3
        Send, {!i}
        Send, {lh}
    return

}
;----------------------------------------------
FixExplorerBackButton() {
    #IfWinActive, ahk_exe explorer.exe 
    Send, {backspace}
    return

}
;----------------------------------------------

;Clear PullStack in 3 DOMs Sierra Chart
ClearSCPullStack() {
    WinActivate, AHK_CLASS Afx:0000000140000000:0:0000000000010009:0000000000000000:0000000000000000
    Send, {F2}
}
;----------------------------------------------

EditScript()
{
    ; Get the path of the script directory
    ScriptDir := A_ScriptDir
    
    ; Set the file paths for FILE1 and FILE2
    File1 := ScriptDir . "\user_config.ahk"
    File2 := ScriptDir . "\user_shortcuts.ahk"
    
    ; Open the text editor with both files
    MsgBox, 48, Editing Warning, The script directory is "%File1%", 1
    
    Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\code.exe" "%ScriptDir%"
    ;Run, "C:\Program Files\Sublime Text\sublime_text.exe" %File1%" 
    ;Run, "C:\Program Files\Sublime Text\sublime_text.exe" %File2%" 
}

;----------------------------------------------

;Turn off monitors with shortcut
TurnMonitorsOff() {
    if FileExist("C:\Windows\System32\nircmd.exe")
        MsgBox, 48, Turn Off Monitors, Turning monitors off in 2 secs, 2.0
        sleep, 2000
        if FileExist("C:\Users\%A_UserName%\Desktop\monitor_off.lnk")
            Run, "C:\Users\%A_UserName%\Desktop\monitor_off.lnk"
}
;----------------------------------------------

SwitchBetweenSameApp() {
    WinGetClass, OldClass, A
    WinGet, ActiveProcessName, ProcessName, A
    WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
    IF WinClassCount = 1
        Return
    loop, 2 {
    WinSet, Bottom,, A
    WinActivate, ahk_exe %ActiveProcessName%
    WinGetClass, NewClass, A
    if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
        break
    }
    return
}

;----------------------------------------------

FocusMode()
{
    ; Get active window's process ID and class
    WinGet, ActivePID, PID, A
    WinGetClass, ActiveClass, A
    
    ; Get primary monitor coordinates
    SysGet, MonitorCount, MonitorCount
    Loop %MonitorCount%
    {
        SysGet, Monitor, MonitorWorkArea, %A_Index%
        If (MonitorPrimary = "1")
        {
            Left := MonitorLeft
            Top := MonitorTop
            Right := MonitorRight
            Bottom := MonitorBottom
            Break
        }
    }
    
    ; Minimize all windows except the active app
    WinGet, WindowList, List
    Loop, %WindowList%
    {
        WinGet, ThisPID, PID, % "ahk_id " WindowList%A_Index%
        WinGetClass, ThisClass, % "ahk_id " WindowList%A_Index%
        If (ThisPID != ActivePID || ThisClass != ActiveClass)
        {
            WinMinimize, % "ahk_id " WindowList%A_Index%
        }
    }
    
    ; Maximize the active window and move it to the primary monitor
    WinMaximize, A
    WinMove, A,, %Left%, %Top%, %Right% - %Left%, %Bottom% - %Top%
}



;----------------------------------------------

OpenDebugGuide() {
	if(winExist("OS10-Debugging-Training-Aug7&8.pdf - [PowerPoint Presentation] - SumatraPDF"))
		WinActivate, OS10-Debugging-Training-Aug7&8.pdf - [PowerPoint Presentation] - SumatraPDF
	Else
		Run, "dpdf.bat"

	Sleep, 750
	return
}

;----------------------------------------------

OpenUserGuide() {
	if(winExist("smartfabric-os10-5-1_en-us.pdf - [Dell EMC SmartFabric OS10 User Guide Release 10.5.1] - SumatraPDF"))
	WinActivate, smartfabric-os10-5-1_en-us.pdf - [Dell EMC SmartFabric OS10 User Guide Release 10.5.1] - SumatraPDF
	Else
		Run, "spdf.bat"

	Sleep, 750

	return
}

;----------------------------------------------

ActivateChrome() {
    WinActivate, ahk_exe chrome.exe
    return
}	
;----------------------------------------------

ToggleCharts(){
    ; TradingView app will have a % sign to show instrument up/down
    WinGetActiveTitle, Title
    if InStr(Title, "%")  ; Check if the title contains '%'
    {
        send, !{NumpadEnter}
    }
    else if InStr(Title, "Sierra")  ; Check if the title contains '%'
    {
        ; This is maximize shortcut for Sierra Chart
        send, ^!x
    }
    else {
        ToggleMaximize()
    }
}
;----------------------------------------------

; This is pending work
; Issue is moving Window between monitors
SetupSierraOnDesktop() {
    SetTitleMatchMode, RegEx
        ;;if WinExist("Sierra Chart 2598 1. MG_ES_3Doms SC Data"){
        if WinExist(".*Sierra.*3Doms*") {
            MsgBox, 64, Moving Sierra, Moving Sierra, 0.4
            ;MoveWindowToMonitor(".*Sierra.*3Doms", 3)
        }
        
        ;if WinExist("Sierra.*2sec_PullStack")
        ;if WinExist("SC4_Available.*")
        ;if WinExist("#3.*ES.*")
        ;if WinExist("#1.*ES.*")
        ;if WinExist("SC4_Available.*")
    
    ;windows := [
    ;    {"title": ".Sierra.*3Doms", "desktop": 2},
    ;    {"title": "Sierra.*2sec_PullStack", "desktop": 2},
    ;    {"title": "SC4_Available.*", "desktop": 2},
    ;    {"title": "#3.*ES.*", "desktop": 2},
    ;    {"title": "#1.*ES.*", "desktop": 2},
    ;    {"title": "SC4_Available.*", "desktop": 2},
    
    ;]

    ; Loop through the array and move each window to its specified desktop
    ;for index, window in windows {
        ;MoveWindowToDesktop(window.title, window.desktop)
    ;}
    Sleep, 750    
    return
}