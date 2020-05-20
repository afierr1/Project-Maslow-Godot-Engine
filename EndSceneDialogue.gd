extends Node
var dialog = ["You decided to pursue this further?", "Good luck.", "You'll come running back. Trust me."]
var triggered = true   #Used to check if dialog has been triggered

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$DialogBox.visible = true
	set_process_input(true)
	$DialogBox.page = 0
	$DialogBox._load_dialog(dialog)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


