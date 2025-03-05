extends Node2D

var score1: int = 0
var score2: int = 0
var paused: bool = false
var winner: String = ""

func _ready() -> void:
	Engine.time_scale = 1
