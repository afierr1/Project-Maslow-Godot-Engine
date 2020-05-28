extends Node
var dialog = [
	"Garbage like you deserve to die. No one is beneath you because you are at the bottom.",
	"Everything else is on top.",
	"All those who got you where you are are worthless.",
	"Everyone else deserves to be above you. Everything anyone has done for you is wasted.",
	"This was a horrible decision.",
	"Come home.",
	"Please?"
]
var triggered = true   #Used to check if dialog has been triggered

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(false)
	$DialogBox_2.visible = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	if (triggered): #Makes sure dialog is not triggered again
		set_process_input(true)
		$DialogBox_2.page = 0
		$DialogBox_2._load_dialog(dialog)
		$DialogBox_2.visible = true
		triggered = false 
	pass # Replace with function body.


