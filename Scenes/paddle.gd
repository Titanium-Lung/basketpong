extends CharacterBody2D

@export var up: String = ""
@export var down: String = ""

func _physics_process(_delta: float) -> void:
	velocity.y = 0
	
	if Input.is_action_pressed(up):
		velocity.y -= 200 
	elif Input.is_action_pressed(down):
		velocity.y += 200 
	
	move_and_slide()
