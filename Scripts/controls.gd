extends Control

func _ready() -> void:
	$BackBtn.grab_focus()

func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/instructions.tscn")
