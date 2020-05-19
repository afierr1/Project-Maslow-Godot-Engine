extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 300
const JUMP_HEIGHT = -850 #up is negative in godot
const JUMP_THRUST = 300
var motion = Vector2()
var isMoving = true
var x_val

#Get or set functions required to change variable

func _process(delta):
	
	if (isMoving):
		_character_movement()
	else:
		$AnimatedSprite.play("idle")
	pass
	
func _character_movement():
	
	x_val = motion.x as String
	motion.y += GRAVITY

	 #adds 10 to each frame
	
	var right = Input.is_action_pressed("ui_right")
	var left = Input.is_action_pressed("ui_left")		
	var jump = Input.is_action_pressed("ui_select")
	
		
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.flip_h = true 
		$AnimatedSprite.play("walk")
	else:
		motion.x = 0
		$AnimatedSprite.play("idle")

	if is_on_floor():
		if Input.is_action_just_pressed("ui_select"):
			$AnimatedSprite.stop()
			motion.y = JUMP_HEIGHT 
			if Input.is_action_pressed("ui_right"):
				motion.x += SPEED
				$AnimatedSprite.play("jump")
			if Input.is_action_pressed("ui_left"):
				motion.x -= SPEED
				$AnimatedSprite.play("jump")
				
				
		
		
				
	if Input.is_action_just_released("ui_select") && motion.y < 0:
		motion.y = 0		
	motion = move_and_slide(motion, UP)
	pass
	
func _set_isMoving (flag):
	isMoving = flag
