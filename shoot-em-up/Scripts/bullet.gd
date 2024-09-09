extends RigidBody2D

const SPEED = 700
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	linear_velocity = Vector2.UP * SPEED
	pass # Replace with function body.
