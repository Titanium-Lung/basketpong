extends CharacterBody2D

# Movement variables
const gravity: int = 700
const SPEED = 200.0
const JUMP_VELOCITY = -350.0

# Controls (different for each player) 
@export var jump: String = ""
@export var left: String = ""
@export var right: String = ""
@export var throw: String = ""

# Which direction the ball should be thrown
@export var player: int 

var istouchingwall: bool = false
var isholding: bool = false 

func _ready() -> void:
	if player == -1:
		$AnimatedSprite2D.flip_h = true

func animations():
	if isholding:
		$AnimatedSprite2D.play("idle-holding")
	else:
		$AnimatedSprite2D.play("idle")

func _input(event: InputEvent) -> void:
	# Processes throwing
	if event.is_action_pressed(throw) and not Global.paused:
		if isholding == true:
			var ball: RigidBody2D = get_node("Ball")
			ball.throw(player)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity.y += gravity * delta 

	# Handle jump.
	if Input.is_action_just_pressed(jump) and is_on_floor() and not Global.paused:
		velocity.y = JUMP_VELOCITY
	
	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis(left, right)
	if direction:
		if not (istouchingwall and direction == player): 
			velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	animations()
	move_and_slide()
