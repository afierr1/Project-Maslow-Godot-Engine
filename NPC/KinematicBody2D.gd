extends KinematicBody2D
var interactable = true
var dialog = ["I promise you'll get a better weapon than that stick.", "At least you don't have to worry about ammo.","Good luck."]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("idle")
	$DialogBox.visible = false
	pass # Replace with function body.

func interact():
	if Input.is_action_just_pressed("ui_accept") && !$DialogBox.visible:
		$DialogBox.visible = true
		set_process_input(true)
		$DialogBox.page = 0
		$DialogBox._load_dialog(dialog)
		print($DialogBox.page)
	elif $DialogBox.page == dialog.size()-1 && $DialogBox.visible:
		$DialogBox.visible = false
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
