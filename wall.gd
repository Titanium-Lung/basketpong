extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Ball":
		call_deferred("reset_ball", body)

func reset_ball(body: Node2D):
	body.position = Vector2(568, 261)
	body.linear_velocity = Vector2.ZERO
	body.set_freeze_enabled(true)
