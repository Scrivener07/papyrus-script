Scriptname VSCode:Quests:SampleComplex extends VSCodeQuest
{A complex sample used for testing Papyrus language support.}
import VSCode:Data
import VSCode:Globals

; Fields
;--------------------------------------------

; The current count.
IntegerValue Count

; Events
;--------------------------------------------

; @Overrides
Event OnInit()
	parent.OnInit()
	Count = new IntegerValue
	RegisterForKey(Left)
	RegisterForKey(Right)
EndEvent

; @Overrides
Event OnKeyDown(int keyCode)
	QuestKeyDownHandler(self, keyCode, Count)
EndEvent
