extends Node2D

var board = []

func _ready():
	for x in 8:
		board.append([])
		for y in 8:
			board[x].append(0)
	pass
