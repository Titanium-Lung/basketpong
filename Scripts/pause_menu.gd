extends Control

# Unpause the game when the resume button pressed
func _on_resume_pressed() -> void:
	pauseMenu()

# Quit the game on quit button pressed
func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

# Run every frame 
func _process(_delta: float) -> void: 
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

# If it's paused, unpause. If it's unpaused, pause 
func pauseMenu():
	if Global.paused:
		hide()
		Engine.time_scale = 1 # freezes the game
	else:
		show()
		$"MarginContainer/VBoxContainer"/Resume.grab_focus()
		Engine.time_scale = 0 # unfreezes the game
	
	Global.paused = !Global.paused
