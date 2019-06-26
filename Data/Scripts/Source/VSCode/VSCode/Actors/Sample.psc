Scriptname VSCode:Actors:Sample extends VSCodeActor
{A sample used for testing Papyrus language support.}

; Fields
;--------------------------------------------

; The current count.
int Count = 0

; Events
;--------------------------------------------

; @Overrides
Event OnKeyDown(int keyCode)
	{Handles the OnKeyDown event by incrementing or decrementing a value.}
	If (keyCode == Left)
		Count -= 1
		Debug.TraceSelf(self, "OnKeyDown", "Decreased the count to "+Count)
	ElseIf (keyCode == Right)
		Count += 1
		Debug.TraceSelf(self, "OnKeyDown", "Increased the count to "+Count)
	Else
		Debug.TraceSelf(self, "OnKeyDown", "The key "+keyCode+" is unhandled.")
	EndIf
	CountTo(Count)
	AddItem(Caps001)
EndEvent
