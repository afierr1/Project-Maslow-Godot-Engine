extends Polygon2D

var page = 0
var inputDialog = ["",""]


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _load_dialog(dialog):
	inputDialog = dialog #assign to class variable
	$RichTextLabel.visible_characters = 0
	$RichTextLabel.bbcode_text = inputDialog[page]
	set_process_input(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if (Input.is_action_just_pressed("ui_accept")):
		if $RichTextLabel.visible_characters > $RichTextLabel.get_total_character_count():
			if (page + 1 == inputDialog.size()):
				visible = false				
			if page < inputDialog.size()-1:
				page+=1
				$RichTextLabel.bbcode_text = inputDialog[page]
				$RichTextLabel.visible_characters = 0
		else:
			$RichTextLabel.visible_characters = $RichTextLabel.get_total_character_count()
			
func _on_Timer_timeout():
	if($RichTextLabel.visible_characters <= $RichTextLabel.get_total_character_count()) && visible == true :
		$AudioStreamPlayer.play()
	$RichTextLabel.visible_characters = $RichTextLabel.visible_characters + 1
	pass # Replace with function body.
