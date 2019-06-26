Scriptname VSCodeQuest extends Quest
{A sample used for testing Papyrus language support.}
import VSCode:Data

; Fields
;--------------------------------------------

; The current count.
IntegerValue Count

; Properties
;--------------------------------------------

Group Properties
	Actor Property PlayerREF Auto Const Mandatory
EndGroup

Group PlayerREF
	float Property X Auto Hidden
	float Property Y Auto Hidden
	float Property Z Auto Hidden
EndGroup

Group KeyCodes
	int Property Left = 37 AutoReadOnly
	int Property Right = 39 AutoReadOnly
EndGroup

; Events
;--------------------------------------------

Event OnQuestInit()
	Count = new IntegerValue
	RegisterForKey(Left)
	RegisterForKey(Right)
EndEvent


Event OnQuestShutdown()
	UnregisterForKey(Left)
	UnregisterForKey(Right)
EndEvent


Event OnKeyDown(int keyCode)
	VSCode:Globals.QuestKeyDownHandler(self, keyCode, Count)
	CountTo(Count.Value)
	UpdateValues()
EndEvent

; Methods
;--------------------------------------------

Function UpdateValues()
	X = PlayerREF.X
	Y = PlayerREF.Y
	Z = PlayerREF.Z
EndFunction


Function CountTo(int size)
	int index = 0
	While (index < size)
		index += 1
		Debug.TraceSelf(self, "CountTo", "("+index+"/"+size+")")
	EndWhile
EndFunction
