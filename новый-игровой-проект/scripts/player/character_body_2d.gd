extends CharacterBody2D
var speed=1000
var gravity=2000
var jump=20000
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	horizontal_movement()
	move_and_slide() 
func horizontal_movement():
	var horizontal_input = Input.get_action_strength("player_right") -  Input.get_action_strength("player_left")
	velocity.x = horizontal_input * speed
func Jump(delta):
	if Input.is_action_just_pressed("player_jump"):
		velocity.y=jump
		print(1)
	
