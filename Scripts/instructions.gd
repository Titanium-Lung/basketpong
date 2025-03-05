extends Control

func _ready() -> void:
	$VBoxContainer/ControlsBtn.grab_focus()

func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")

func _on_controls_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/controls.tscn")
