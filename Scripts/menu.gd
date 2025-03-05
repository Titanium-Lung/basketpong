extends Node2D

func _ready() -> void:
	$"CanvasLayer/VBoxContainer/Start Button".grab_focus()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
