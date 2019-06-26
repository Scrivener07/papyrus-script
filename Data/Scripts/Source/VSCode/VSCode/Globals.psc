Scriptname VSCode:Globals Native Const Hidden
import VSCode:Data

; Methods
;--------------------------------------------

; Handles the OnKeyDown event by incrementing or decrementing a value.
; * Note: Globals are essentially treated as an external script.
Function QuestKeyDownHandler(VSCodeQuest script, int keyCode, IntegerValue integer) Global
	If (keyCode == script.Left)
		integer.Value -= 1
		Debug.TraceSelf(script, "OnKeyDown", "Decreased the count to "+integer.Value)
	ElseIf (keyCode == script.Right)
		integer.Value += 1
		Debug.TraceSelf(script, "OnKeyDown", "Increased the count to "+integer.Value)
	Else
		Debug.TraceSelf(script, "OnKeyDown", "The key "+keyCode+" is unhandled.")
	EndIf
EndFunction

; Handles the OnKeyDown event by incrementing or decrementing a value.
; Note: Globals are essentially treated as an external script.
Function ActorKeyDownHandler(VSCodeActor script, int keyCode, IntegerValue integer) Global
	If (keyCode == script.Left)
		integer.Value -= 1
		Debug.TraceSelf(script, "OnKeyDown", "Decreased the count to "+integer.Value)
	ElseIf (keyCode == script.Right)
		integer.Value += 1
		Debug.TraceSelf(script, "OnKeyDown", "Increased the count to "+integer.Value)
	Else
		Debug.TraceSelf(script, "OnKeyDown", "The key "+keyCode+" is unhandled.")
	EndIf
EndFunction
