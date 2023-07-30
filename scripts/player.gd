extends KinematicBody2D


class_name player

export var walk_speed = 650
var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
var y_input = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
var friction = 0.17
var motion = Vector2.ZERO
var sprint = false



func input(delta):
	
	if x_input == 0:
		motion.x = lerp(motion.x, 0, friction)
	if y_input == 0:
		motion.y = lerp(motion.y, 0, friction)
		
	if Input.get_action_strength("ui_right") and !Input.get_action_strength("ui_left"):
		motion.x += walk_speed  * delta
		$AnimatedSprite.flip_h = false
		
	elif Input.get_action_strength("ui_left") and !Input.get_action_strength("ui_right"):
		motion.x -= walk_speed  * delta
		$AnimatedSprite.flip_h = true
		
	if Input.get_action_strength("ui_down") and !Input.get_action_strength("ui_up"):
		motion.y += walk_speed  * delta

		
	elif Input.get_action_strength("ui_up") and !Input.get_action_strength("ui_down"):
		motion.y -= walk_speed  * delta

	
func sprint(delta):
	if sprint == false and Input.is_action_just_pressed("sprint"):
		walk_speed = 1200
		sprint = true
		print(walk_speed)
	elif sprint == true and Input.is_action_just_pressed("sprint"):
		walk_speed = 650
		sprint = false
		print(walk_speed)
		
func animation(delta):
	if Input.get_action_strength("ui_down"):
		$AnimatedSprite.play("down")
	elif Input.get_action_strength("ui_up"):
		$AnimatedSprite.play("up")
	else:
		$AnimatedSprite.play("idle")
		
func Using(delta):
		if Input.get_action_strength("use"):
			$Using.monitoring = true
			$Using.monitorable = true
		else:
			$Using.monitoring = false
			$Using.monitorable = false
		
func _physics_process(delta: float) -> void:
	Using(delta)
	animation(delta)
	input(delta)
	sprint(delta)
	motion = move_and_slide(motion, Vector2.ZERO)

