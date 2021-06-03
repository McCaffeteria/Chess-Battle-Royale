extends Node2D

var board = []

func _ready():
	for x in 7:
		board.append([])
		for y in 7:
			board[x].append(BoardCell.new)
	pass
