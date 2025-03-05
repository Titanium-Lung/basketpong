extends Node2D

var score1: int = 0
var score2: int = 0
var paused = false
var winner: String = ""

func _ready() -> void:
	Engine.time_scale = 1

#@onready var pause_menu = $/root/Main/PauseMenu


#func _process(_delta: float) -> void: 
	#if Input.is_action_just_pressed("pause"):
		#pauseMenu()
#
#func pauseMenu():
	#if paused:
		#pause_menu.hide()
		#Engine.time_scale = 1
	#else:
		#pause_menu.show()
		#Engine.time_scale = 0
	#
	#paused = !paused
