extends Node

var score = 0

func incrementScore():
	score += 1
	get_node("score").text = str(score)
