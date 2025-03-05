extends Node2D

func _ready() -> void:
	$"CanvasLayer/VBoxContainer/Restart".grab_focus()
	get_node("CanvasLayer/Label").set_text(Global.winner + " won! Play again?")

# Go to the main scene on restart button press
func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

# Quit the game on quit button press
func _on_quit_pressed() -> void:
	get_tree().quit()
