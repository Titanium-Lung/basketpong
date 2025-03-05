extends Node2D

# Focus controller on the Start button
func _ready() -> void:
	$"CanvasLayer/VBoxContainer/Start Button".grab_focus()

# Go to the main scene on start button press
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

# Quit the game on quit button press
func _on_quit_pressed() -> void:
	get_tree().quit()

# Go to the instructions scene on instructions button press
func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/instructions.tscn")

# Go to the credits scene on credits button press
func _on_credits_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")
