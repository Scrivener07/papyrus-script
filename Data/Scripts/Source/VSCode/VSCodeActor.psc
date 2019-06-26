Scriptname VSCodeActor extends Actor
{A sample used for testing Papyrus language support.}
import VSCode:Data
import VSCode:Globals

; Fields
;--------------------------------------------

; The current count.
IntegerValue Count

; Properties
;--------------------------------------------

Group Properties
	MiscObject Property Caps001 Auto Const Mandatory
EndGroup

Group KeyCodes
	int Property Left = 37 AutoReadOnly
	int Property Right = 39 AutoReadOnly
EndGroup

; Events
;--------------------------------------------

Event OnInit()
	Count = new IntegerValue
	RegisterForKey(Left)
	RegisterForKey(Right)
EndEvent


Event OnKeyDown(int keyCode)
	ActorKeyDownHandler(self, keyCode, Count)
	CountTo(Count.Value)
	AddItem(Caps001)
EndEvent

; Methods
;--------------------------------------------

Function CountTo(int size)
	int index = 0
	While (index < size)
		index += 1
		Debug.TraceSelf(self, "CountTo", "("+index+"/"+size+")")
	EndWhile
EndFunction