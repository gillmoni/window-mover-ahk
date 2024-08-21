#SingleInstance Force
; ====================
; === INSTRUCTIONS ===
; ====================
; 1. Any lines starting with ; are ignored
; 2. After changing this config file run script file "desktop_switcher.ahk"
; 3. Every line is in the format HOTKEY::ACTION

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm

; ===========================
; === END OF INSTRUCTIONS ===
; ===========================

SetWorkingDir, C:\ ;prevent secondary WT windows from opening in script dir

; === SWITCHES ===
#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)
#0::switchDesktopByNumber(10)
#`::switchDesktopByNumber(1)

; === MOVES ===
#+1::MoveCurrentWindowToDesktop(1)
#+2::MoveCurrentWindowToDesktop(2)
#+3::MoveCurrentWindowToDesktop(3)
#+4::MoveCurrentWindowToDesktop(4)
#+5::MoveCurrentWindowToDesktop(5)
#+6::MoveCurrentWindowToDesktop(6)
#+7::MoveCurrentWindowToDesktop(7)
#+8::MoveCurrentWindowToDesktop(8)
#+9::MoveCurrentWindowToDesktop(9)
#+0::MoveCurrentWindowToDesktop(1)


;-----------------------------------------------------------------------------------------
; === WIN10 QUICK ===
^q::closeWindow()
#q::closeWindow()
#+t::LaunchWSL1()
!Enter::toggleMaximize()
!NumpadEnter::toggleMaximize()
#+!f::FocusMode()


; #^Enter::LaunchWSL2()
;#+n::CreateNewTextFile()
; #+Enter::LaunchPowerShell()
;^!k:: FixExplorerBackButton()

; === COMMUNICATION ===
#+o::LaunchOdin()
#+e::LaunchMail()
#+g::LaunchGmail()
#+!t::LaunchTeams()
#+y::LaunchYoutube()
#+c::LaunchChatgpt()
#+d::LaunchDiscord()
^+g::SendRightClick()
;#+b::LaunchDiscordPTB()

; === UTILITIES ===
^#!End::TurnMonitorsOff()
; #h::HideSysTray()
; #+c::LaunchCygwin()

; === SOFTWARES ===
#+u::LaunchUG()
#+k::LaunchPL()
;#+g::LaunchGNS()
#Enter::LaunchWeb()
#NumpadEnter::LaunchWeb()

; === EDITORS ===
#!+Enter::LaunchIDE()
#+Enter::LaunchEditor()

; #a::LaunchEmacs()
;F3::LaunchNotepadPlusPlus()
;+F3::MakeNotepadPlusPlusSplit()

; === AHK Shortcuts ===
#+!e::EditScript()
#+w::LaunchAHKSpy()
#+r::ReloadScript()


; === MISC ===
#+p::LaunchPomodoro()
#+n::LaunchNeetcodeIO()
#+f::LaunchFireshipIO()
; #+c::ClearSCPullStack()

; === TODO PENDING ===
; === VIM STYLE KEYS ===
; IM Style HJKL for most windows
; Disable these in WindowsTerminal or OthersNeeded
; #IfWinNotActive, ahk_class Chrome_WidgetWin_1    ;For discord and chrome
;{
;	; VIM style keybindings don't work if it is a terminal window. 
;    ^h:: Send {Left}
;        #IfWinActive, ahk_exe WindowsTerminal.exe Send {Left}
;
;    ^j::
;        #IfWinActive, ahk_exe WindowsTerminal.exe Send {Down}
;
;    ^k::
;        Send {Up}
;
;    ^l:: 
;        #IfWinNotActive, ahk_exe WindowsTerminal.exe Send {Right}
;    
;    ^i::
;        #IfWinActive, ahk_exe chrome.exe Send {^l}
;        #IfWinActive, ahk_exe Discord.exe Send {Up}
;        #IfWinNotActive, ahk_exe Zoom.exe Send {Right}
;    return
;
;    ^u::
;        #IfWinActive, ahk_exe chrome.exe Send {^j} ; Send Ctrl+J for downloads
;    return
;    
;    +l::
;        #IfWinActive, ahk_exe chrome.exe Send {^l}
;    return
;}
;
; === MetaTrader ===
;!t::MetaTrader_line()
;!h::MetaTrader_horizontalline()
;!r::MetaTrader_rectangle()

; === Obsolete Need Fix ===
;#^Enter::LaunchWSL2()
#!+n::CreateNewTextFile()
;#+Enter::LaunchPowerShell()
;^!k:: FixExplorerBackButton()
