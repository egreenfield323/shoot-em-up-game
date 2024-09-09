extends RigidBody2D

const SPEED = 100

func _ready() -> void:
	linear_velocity = Vector2.DOWN.normalized() * SPEED
	
	pass # Replace with function body.


func _on_body_entered(body: Node) -> void:
	get_parent().get_parent().incrementScore()
	queue_free()
	body.queue_free()
	pass # Replace with function body.
