extends Node2D

var board = []

func _ready():
	createGameState()
	pass

func createGameState():
	for x in 7:
		board.append([])
		for y in 7:
			board[x].append()
	pass

func sendGameState():
	#This is for refreshing a Sub-arbiter that is desynced or just joining the game
	pass

func validateMove():
	#This should validate moves sent by the sub-arbiters, as well as recording
	#moves that are valid and forcing full updates to sub-arbiters that submit
	#invalid moves
	pass

func arePlayersReady():
	#Check whether or not all players have submitted moves.
	#Consider adding a secondary method to ask sub-arbiters
	#whether they have moves, but high level networking
	#should ensure this is redundant.
	pass

func updateSubs():
	#This is for updating a single round of moves to the sub-arbiters
	pass

func calculateResults():
	#This needs to compile all moves from all players and calculate the outcome.
	#Ideally this would also allow for comunication between multiple arbiters in
	#a true MMO situation, but single arbiter will be fine for now.
	pass

#Ths following sections should be identical to the section in Sub-Arbiter.gd
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
