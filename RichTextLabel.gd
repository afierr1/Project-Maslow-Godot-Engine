extends RichTextLabel

var page = 0
var inputDialog = ["",""]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



	
func _input(event):
	if (Input.is_action_just_pressed("ui_accept")):
		if visible_characters > get_total_character_count():
			if page < inputDialog.size()-1:
				page += 1
				bbcode_text = inputDialog[page]
				visible_characters = 0
		pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	visible_characters = visible_characters + 1
	pass # Replace with function body.
