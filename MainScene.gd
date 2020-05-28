extends Node2D

# Declare member variables here. Examples:
# var a = 2
onready var TriggerArray = [$DialogTrigger_2/DialogBox_2.visible,$DialogTrigger_3/DialogBox_2.visible]
var index = 0
var timer
var dialog = ["I see you decided to go for it", "Good luck."]
# Called when the node enters the scene tree for the first time.
func _ready():
	$KinematicBody2D/RayCast2D.add_exception(TileMap)

	##$DialogBox.visible = true
	#set_process_input(true)
	#$DialogBox.page = 0
	#$DialogBox._load_dialog(dialog)# Replace with function body.
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	char_interaction()

	if ($DialogBox.visible || $DialogTrigger_2/DialogBox_2.visible || $DialogTrigger_3/DialogBox_2.visible 
	|| $DialogTrigger_4/DialogBox_2.visible || $DialogTrigger_5/DialogBox_2.visible || $DialogTrigger_6/DialogBox_2.visible 
	|| $DialogTrigger_7/DialogBox_2.visible || $npc/KinematicBody2D/DialogBox.visible):
		$KinematicBody2D._set_isMoving(false)
	else:
		var t = Timer.new()
		t.set_wait_time(0.5)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		$KinematicBody2D._set_isMoving(true)
	pass
	

func _on_EndTrigger_body_entered(body):
	get_tree().change_scene("res://End Scene.tscn")

func char_interaction():
	if $KinematicBody2D/RayCast2D.is_colliding():
		var object = $KinematicBody2D/RayCast2D.get_collider()
		object.interact()
