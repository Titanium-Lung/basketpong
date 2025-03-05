extends Control

# Make controller focus on back button
func _ready() -> void:
	$BackBtn.grab_focus()

# Go to the menu scene on back button press
func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
