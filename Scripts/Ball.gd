extends RigidBody2D

# Which player is currently holding the ball
var holdingPlayer: CharacterBody2D = null

# Make the player hold the ball when they touch it
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player1"  or body.name == "Player2": 
		call_deferred("reparent", body) 
		call_deferred("set_freeze_enabled", true)
		call_deferred("adjust")
		body.isholding = true
		holdingPlayer = body

# Move the ball to the right place (for call_deferred)
func adjust():
	position = Vector2(0, -80)

# Make the player throw the ball 
# @param player	which direction the ball should be thrown
func throw(player: int):
	reparent($/root/Main, true) 
	call_deferred("moveball", player)

# Sets the velocity of the ball after thrown (for call_deferred)
# @param player	which direction the ball should be thrown
func moveball(player: int):
	set_freeze_enabled(false)
	linear_velocity += Vector2(player * 700, -820)
	holdingPlayer.isholding = false
	holdingPlayer = null
