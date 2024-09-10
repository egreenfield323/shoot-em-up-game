extends Node

var score = 0

func incrementScore():
	score += 1
	get_node("score").text = str(score)

func _process(delta: float) -> void:
	var scaleX = DisplayServer.window_get_size().x / $world_background.texture.get_size().x
	var scaleY = DisplayServer.window_get_size().y / $world_background.texture.get_size().y
	
	$world_background.set_scale(Vector2(scaleX, scaleY))
	$world_background.position = Vector2((DisplayServer.window_get_size().x) / 2,(DisplayServer.window_get_size().y) / 2)
	
	pass
