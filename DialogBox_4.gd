extends Node
var dialog = [
	"Enjoy the lavish parties the nobles host? Why not go back to sleep on your pile of garbage?", 
	"At least you have something you can call your own.",
	"AT LEAST A GARBAGE PILE IS BETTER THAN A GRAVE."
	]
var triggered = true   #Used to check if dialog has been triggered

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$DialogBox_2.visible = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	if (triggered): #Makes sure dialog is not triggered again
		$DialogBox_2.page = 0
		$DialogBox_2._load_dialog(dialog)
		$DialogBox_2.visible = true
		triggered = false  
	pass # Replace with function body.
