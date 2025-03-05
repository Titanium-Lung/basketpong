extends Control

# Focus controller on the controls button
func _ready() -> void:
	$VBoxContainer/ControlsBtn.grab_focus()

# Go to the menu scene on back button press
func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

# Go to the controls scene on controls button press
func _on_controls_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/controls.tscn")
