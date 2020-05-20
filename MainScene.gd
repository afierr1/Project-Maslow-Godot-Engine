extends Node2D

# Declare member variables here. Examples:
# var a = 2
onready var TriggerArray = [$DialogTrigger_2/DialogBox_2.visible,$DialogTrigger_3/DialogBox_2.visible]
var index = 0
var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if ($DialogTrigger_2/DialogBox_2.visible || $DialogTrigger_3/DialogBox_2.visible 
	|| $DialogTrigger_4/DialogBox_2.visible || $DialogTrigger_5/DialogBox_2.visible):
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
