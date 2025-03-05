extends Area2D

# determines which side of the court the ball goes to when a point is scored
@export var wall: int
var win_threshold: int = 10
@onready var label: Label = $"/root/Main/MainUI/Score label"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Ball":
		call_deferred("reset_ball", body)
		if self.name == "Left Wall":
			Global.score2+=1
			if Global.score2 >= win_threshold:
				call_deferred("check_win", "Player 2")
		if self.name == "Right Wall":
			Global.score1+=1
			if Global.score1 >= win_threshold:
				call_deferred("check_win", "Player 1")
		label.set_text(str(Global.score1) + "  " + str(Global.score2))

func reset_ball(body: Node2D):
	body.position = Vector2(568 + wall*300, 601)
	body.linear_velocity = Vector2.ZERO
	body.set_freeze_enabled(true)

func check_win(winner: String):
	Global.winner = winner
	get_tree().change_scene_to_file("res://Scenes/win_scene.tscn")
