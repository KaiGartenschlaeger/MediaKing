;MediaKing Plugin Structur
;Copyright�Kai Gartenschl�ger, 2008

EnableExplicit

Structure _Plugin
 size.i
 stable.i
 autor.s
 version.i
 description.s
EndStructure
Global Plugin._Plugin

Structure _CurrPlay
 path.s
 title.s
 artist.s
 album.s
 year.s
 track.i
 comment.s
 genre.s
 length.i
 type.i
 format.i
 channels.i
 bits.i
 bitrate.i
 frequency.f
 volume.f
 pan.f
 priority.f
 starttime.i
EndStructure

;Wird beim �berpr�fen des Plugins aufgerufen
;R�ckgabewert muss der Pointer zur 'Plugin' Structur sein
ProcedureDLL.l MK_Plugin_Check(plHandleWin)
 Plugin\size        = SizeOf(_Plugin)
 Plugin\stable      = 39
 Plugin\autor       = "Autor"
 Plugin\version     = 100
 Plugin\description = "Beschreibung"
 ProcedureReturn @Plugin
EndProcedure

;Wird beim �ffnen des Plugins aufgerufen
;plHandle enth�lt das Handle zum Hauptfenster von MediaKing
;p_CurrPlay enth�lt ein Pointer zur _CurrPlay Structure
;R�ckgabewert mu� 1 f�r Erfolgreich oder 0 f�r Fehlgeschlagen haben
ProcedureDLL MK_Plugin_Open(plHandle, p_CurrPlay)
 
 Protected iResult.i
 
 If OpenWindow(#PB_Any, 0, 0, 100, 100, "TEST")
  iResult = 1
 Else
  iResult = 0
 EndIf
 
 ProcedureReturn iResult
 
EndProcedure

;Wird beim Schlie�en des Plugins aufgerufen
ProcedureDLL MK_Plugin_Close()
 
EndProcedure

;Wird aufgerufen sobald ein Song abgespielt wird
;p_CurrPlay enth�lt ein Pointer zur _CurrPlay Structure
ProcedureDLL MK_Song_Play(p_CurrPlay)
 
EndProcedure

;Wird aufgerufen sobald die Wiedergabe gestopt wird
ProcedureDLL MK_Song_Stop()
 
EndProcedure

;Wird aufgerufen sobald die Wiedergabe angehalten wird
;plBool ist ein Pointer zu einer Long Variable die denn Pausestatus enth�lt (1:Aktiviert, 0:Deaktiviert)
ProcedureDLL MK_Song_Pause(plBool)
 
EndProcedure

;Wird aufgerufen sobald sich die Position vom Song ver�ndert
;plPosition ist ein Pointer auf eine Long Variable mit der Position (1 - 1000)
ProcedureDLL MK_Song_Position(plPosition)
 
EndProcedure

;Wird einmal pro WindowEventLoop aufgerufen
;R�ckgabewert 2 beendet das Plugin
ProcedureDLL MK_Window_EventLoop(plWindowEvent, plEventWindow, plEventGadget, plEventMenu, plEventType)
 
EndProcedure

; IDE Options = PureBasic 4.30 Beta 4 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 40
; Folding = --
; EnableXP
; Executable = Sample.dll
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 119
; EnableBuildCount = 107
; EnableExeConstant