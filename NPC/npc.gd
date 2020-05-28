extends Node

onready var player = get_tre
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$KinematicBody2D/AnimatedSprite.play("idle")
	pass # Replace with function body.

func _intereact():
	print("hello!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

