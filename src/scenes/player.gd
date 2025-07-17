extends CharacterBody2D

var speed = 300
const gravity = 400
const jump = -240

func _physics_process(delta):
	var direction = 0
	
	if Input.is_action_pressed("ui_right"):
		direction += 0.5
	if Input.is_action_pressed("ui_left"):
		direction -= 0.5
	
	velocity.x = direction * speed
	if Input.is_action_pressed("ui_down"):
			direction += 300
				
	if Input.is_action_just_pressed("ui_up"):
			velocity.y = jump	
		
	if not is_on_floor():
		velocity.y += gravity * delta
		
	move_and_slide()
