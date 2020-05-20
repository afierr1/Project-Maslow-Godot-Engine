extends Node
var dialog = [
	"Just a friendly reminder to jump you press SPACEBAR or A. To move, you use the arrow keys or control pad. ",
	"Easy enough, right?"]
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
func _process(delta):
	if $DialogBox.visible == false:
		var t = Timer.new()
		t.set_wait_time(1)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_tree().change_scene("res://MainScene.tscn")
		
	pass



func _on_Timer_timeout():
	pass # Replace with function body.
