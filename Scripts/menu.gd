extends Node2D

func _ready() -> void:
	$"CanvasLayer/VBoxContainer/Start Button".grab_focus()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/instructions.tscn")

func _on_credits_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")
