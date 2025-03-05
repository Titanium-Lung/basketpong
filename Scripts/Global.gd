extends Node2D

# Player 1 score
var score1: int = 0
# Player 2 score
var score2: int = 0
# Whether the game is paused
var paused: bool = false
# Which player has won
var winner: String = ""

# Make sure the game isn't frozen when it's loaded
# Reset Global variables
func _ready() -> void:
	Engine.time_scale = 1
	Global.score1 = 0
	Global.score2 = 0
	Global.paused = false
	Global.winner = ""
