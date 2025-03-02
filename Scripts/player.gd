extends CharacterBody2D

# player movement variables 
@export var speed: int = 100
@export var gravity: int = 200 

@export var jump: String = ""
@export var left: String = ""
@export var right: String = ""
@export var throw: String = ""

@export var player: int 
var istouchingwall: bool = false
var isholding: bool = false 

const SPEED = 100.0
const JUMP_VELOCITY = -100.0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed(throw):
		if isholding == true:
			var ball: RigidBody2D = get_node("Ball")
			ball.throw(player)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity.y += gravity * delta 

	# Handle jump.
	if Input.is_action_just_pressed(jump) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis(left, right)
	if direction:
		if not (istouchingwall and direction == player): 
			velocity.x = direction * SPEED
			
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()

#func dothrow(): 
