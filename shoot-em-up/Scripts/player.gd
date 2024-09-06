extends CharacterBody2D

const SPEED = 500.0

func _physics_process(delta: float) -> void:
	
	var direction = Vector2()
	
	if Input.is_action_pressed("left"):
		direction += Vector2.LEFT
	if Input.is_action_pressed("right"):
		direction += Vector2.RIGHT
	if Input.is_action_pressed("up"):
		direction += Vector2.UP
	if Input.is_action_pressed("down"):
		direction += Vector2.DOWN
		
	velocity = direction.normalized() * SPEED
	
	move_and_slide()
