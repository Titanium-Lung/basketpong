extends Node2D

func _ready() -> void:
	$"CanvasLayer/VBoxContainer/Restart".grab_focus()
	get_node("CanvasLayer/Label").set_text(Global.winner + " won! Play again?")


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
