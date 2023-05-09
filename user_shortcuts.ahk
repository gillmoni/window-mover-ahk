; Includes funtions to launch various apps etc
;----------------------------------------------
LaunchWeb() {
    Run, Chrome.exe
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchGmail() {
    Run, Chrome.exe --new-window "https://gmail.com/"
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchChatgpt() {
    Run, Chrome.exe --new-window "https://chat.openai.com/chat"
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchOdin() {
    Run, Chrome.exe --new-window "https://www.theodinproject.com/dashboard"
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchPomodoro() {
    SetTitleMatchMode, RegEx
    
    if WinExist("Weekly To Do List Template - Matrix - Priority Matrix") {
        WinActivate, .*Weekly To Do List Template.*Matrix.*Priority Matrix
        WinWaitActive, .*Weekly To Do List Template.*Matrix.*Priority Matrix
    }
    else {
        LaunchPriorityMatrix()
    }
    if !WinExist("Pomodor") {
        Run, Chrome.exe --app="https://pomodor.app/timer"
    } 
    else {        
        WinActivate, .*Pomodor.*
        WinWaitActive, .*Pomodor.*
    }

    Sleep, 750    
    return
}
;----------------------------------------------

LaunchPriorityMatrix() {
    Run, Chrome.exe --app="https://sync.appfluence.com/office365/app/index/app/home/agenda/"
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchFireshipIO() {
    Run, Chrome.exe --new-window "https://fireship.io/courses"
    Sleep, 750
    WinActivate, Chrome.exe
    return
}
;----------------------------------------------

LaunchNeetcodeIO() {
    Run, Chrome.exe --new-window "https://neetcode.io/courses"
    Sleep, 750
    WinActivate, Chrome.exe
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

LaunchMail() {
    IfWinNotExist, AHK_Class rctrl_renwnd32
        Run, "C:\Program Files (x86)\Microsoft Office\root\Office16\Outlook.exe"
    Else
        WinActivate, AHK_Class rctrl_renwnd32
    Sleep, 750
    WinActivate, Outlook.exe

    return
}
;----------------------------------------------

LaunchTeams() {
; Not it can also be checked with ProcessName
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
    ;if FileExist("C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk")
        IfWinNotExist, AHK_Class Discord.exe
            Run, "C:\Users\%A_UserName%\AppData\Local\Discord\app-1.0.9013\Discord.exe"
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
        Send ^f
        CoordMode, Mouse, Screen
        MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
        sleep 50
        Click
        ;Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
        Send !d
    return
}
;----------------------------------------------

MakeNotepadPlusPlusSplit() {
    IfWinExist, AHK_CLASS Notepad++
    WinActivate, ahk_exe notepad++.exe
    Send ^f
    CoordMode, Mouse, Screen
    MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
    sleep 50
    Click
    ;
    Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
    Send !o
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

ReloadScript() {
    MsgBox, 48, Reload Warning, Reloading script, 0.5
    Reload
    return

}

;----------------------------------------------

CreateNewTextFile() {
    Macro1:
    Click, Right, 1
    Sleep, 10
    SendRaw, wtREADME
    Send, {Enter}
    return
}
;----------------------------------------------

SendRightClick()
{   
    If WinActive("ahk_exe Discord.exe")
        MsgBox, 48, Random Box, Random message disappears, 0.01
    Else
        Send {AppsKey}
    return
}
;----------------------------------------------

FixExplorerBackButton() {
    #IfWinActive, ahk_exe explorer.exe Send {backspace}
    return

}
;----------------------------------------------

;Clear PullStack in 3 DOMs Sierra Chart
ClearSCPullStack() {
    WinActivate, AHK_CLASS Afx:0000000140000000:0:0000000000010009:0000000000000000:0000000000000000
    Send {F2}

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
        if FileExist("C:\Users\%A_UserName%\Desktop\monitor_off.lnk")
            MsgBox, 48, Turn Off Monitors, Turning monitors off in 2 secs, 2.0
            Run, "C:\Users\%A_UserName%\Desktop\monitor_off.lnk"

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
