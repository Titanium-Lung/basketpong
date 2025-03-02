extends RigidBody2D

func _ready():
	gravity_scale = 1
	

var holdingPlayer: CharacterBody2D = null

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player1"  or body.name == "Player2": 
		call_deferred("reparent", body)
		call_deferred("set_freeze_enabled", true)
		call_deferred("adjust")
		body.isholding = true
		holdingPlayer = body

func adjust():
	position = Vector2(0, -80)

func throw(player: int):
	reparent($/root/Main, true) 
	call_deferred("moveball", player)

func moveball(player: int):
	set_freeze_enabled(false)
	linear_velocity = Vector2(player * 400, -400)
	holdingPlayer.isholding = false
	holdingPlayer = null
