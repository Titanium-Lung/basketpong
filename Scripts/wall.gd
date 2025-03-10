extends Area2D

# Determines which side of the court the ball goes to when a point is scored
@export var wall: int
# How many points to win
var win_threshold: int = 5
# Label to change score text of 
@onready var label: Label = $"/root/Main/MainUI/Score label"

# Process resetting ball and updating score when ball collides with wall
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Ball":
		call_deferred("reset_ball", body)
		call_deferred("check_win")

# Resets position of ball to the correct side 
func reset_ball(body: Node2D):
	body.linear_velocity = Vector2.ZERO
	body.position = Vector2(568 + wall*300, 601)
	#body.set_freeze_enabled(true) ## Might leave this just in case I change something

# Updates score and moves to win scene if someone wins
func check_win():
	if self.name == "Left Wall":
		Global.score2+=1
		if Global.score2 >= win_threshold:
			Global.winner = "Player 2"
			get_tree().change_scene_to_file("res://Scenes/win_scene.tscn")
	if self.name == "Right Wall":
		Global.score1+=1
		if Global.score1 >= win_threshold:
			Global.winner = "Player 1"
			get_tree().change_scene_to_file("res://Scenes/win_scene.tscn")
	label.set_text(str(Global.score1) + "  " + str(Global.score2))
