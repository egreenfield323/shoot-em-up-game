extends RigidBody2D

const SPEED = 100

func _ready() -> void:
	linear_velocity = Vector2.DOWN.normalized() * SPEED
	
	pass # Replace with function body.
