extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player1"  or body.name == "Player2": 
		body.istouchingwall = true  
		body.velocity.x = 0


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player1" or body.name == "Player2": 
		body.istouchingwall = false 
