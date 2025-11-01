extends CharacterBody2D


const SPEED = 1000.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta: float) -> void:
	


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right"):
		velocity.x = SPEED
	else:
		velocity.x = 0

	move_and_slide()
