extends Node2D

@export var enemy_resource: Resource

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	rng.randomize()
	var enemy = enemy_resource.instantiate()
	var xPos = rng.randi_range(0, DisplayServer.window_get_size().x)
	enemy.position = Vector2(xPos, 0)
	add_child(enemy)
	
	var newTime = $Timer.wait_time - .03
	if (newTime >= .9):
		$Timer.wait_time = newTime
	
	pass # Replace with function body.
