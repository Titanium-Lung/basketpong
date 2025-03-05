extends Control

func _on_resume_pressed() -> void:
	pauseMenu()

func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

func _process(_delta: float) -> void: 
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func pauseMenu():
	if Global.paused:
		hide()
		Engine.time_scale = 1
	else:
		show()
		$"MarginContainer/VBoxContainer"/Resume.grab_focus()
		Engine.time_scale = 0
	
	Global.paused = !Global.paused
