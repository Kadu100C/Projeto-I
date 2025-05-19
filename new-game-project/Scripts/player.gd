extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -300.0

@onready var animated_player: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move left", "move right")
	
	#Flip the sprite
	if direction > 0:
		animated_player.flip_h = false
	elif direction < 0:
		animated_player.flip_h = true
	
	#animations
	if is_on_floor():
		if direction == 0:
			animated_player.play("1 Idle")
		else:
			animated_player.play("2 Run")
	elif velocity.y > 0:
		animated_player.play("4 Fall")
	elif velocity.y < 0:
		animated_player.play("3 Jump")
	
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
