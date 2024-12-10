extends CharacterBody2D

#Player movement variables
@export var SPEED = 100
@export var GRAVITY = 200


func _physics_process(delta):
	velocity.y += GRAVITY * delta
	horizontal_movement()
	move_and_slide()

func horizontal_movement():
	var horizontal_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = horizontal_input * SPEED
