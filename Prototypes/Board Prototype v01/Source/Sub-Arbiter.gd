extends Node2D

var board = []

func _ready():
	pass

func selectPiece():
	pass

func deselectPiece():
	#This currently assumes that the valid moves will only be shown while dragging the piece.
	#Not ideal, but will be suficient for now. Revisit later.
	pass

func defineValidMoves():
	pass

func sendValidMoves():
	pass

func highlightMoves():
	pass

func unhighlightCells():
	pass

func checkCellHighlighted():
	pass

func movePiece():
	pass

func updateMove():
	pass

#Ths section should be identical to the section in Arbiter.gd
func pawnMoves():
	pass

func kingMoves():
	pass

func queenMoves():
	pass

func bishopMoves():
	pass

func knightMoves():
	pass

func rookMoves():
	pass
