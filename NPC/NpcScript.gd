extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player


# Called when the node enters the scene tree for the first time.
func _ready():
	$KinematicBody2D/RichTextLabel.visible = false

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass


func _on_Area2D_body_entered(body):
	pass # Replace with function body.


func _on_Area2D_body_exited(body):

	pass # Replace with function body.

func interact():
	print("interacted")
