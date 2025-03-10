extends CharacterBody2D

# Up and down input values; vary per player's paddle
@export var up: String = ""
@export var down: String = ""
var speed: float = 300

# Initial x position of the paddle
var locked_x: float

func _ready():
	locked_x = global_position.x

func _physics_process(_delta: float) -> void:
	# Make the paddle not move (doesn't fully work)
	velocity.y = 0
	global_position.x = locked_x
	velocity.x = 0
	
	# Move the paddle
	if Input.is_action_pressed(up):
		velocity.y -= speed 
	elif Input.is_action_pressed(down):
		velocity.y += speed 
	
	move_and_slide()
