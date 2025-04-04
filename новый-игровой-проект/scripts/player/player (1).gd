extends CharacterBody2D
@export var gravity = 5000
@export var speed = 2650
@export var jump_force = 3700
@export var bcand : Area2D
@export var defet:Control
@export var victory:Control
@export var pause:Control
@onready var anim = $shlp
var obl=0
func _physics_process(delta):
	if obl==0:
		if is_on_floor() == false:
			velocity.y += gravity * delta
		if Input.is_action_just_pressed("player_jump") && is_on_floor():
			velocity.y=-jump_force
		var direction = Input.get_axis("player_left", "player_right")
		velocity.x = direction  * speed
		if Input.is_action_pressed("player_left"):
			anim.play("right")
			$shlp.flip_h = true
		elif Input.is_action_pressed("player_right"):
			anim.play("right")
			$shlp.flip_h = false
		else:
			$shlp.flip_h = false
			anim.play("stand")
		move_and_slide()
	if obl==1:
		var anim1 = $obl
		anim.set_deferred("visible",false)
		anim1.set_deferred("visible",true)
		var direction = Input.get_axis("player_left", "player_right")
		velocity.x = direction  * speed
		var directions = Input.get_axis("player_jump", "player_down")
		velocity.y = directions  * speed
		move_and_slide()
func  _process(delta):
	if Input.is_action_pressed("key_exit"):
		pause.set_deferred("visible",true)
		get_tree().paused=true
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().paused=true
	victory.set_deferred("visible",true)
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().paused=true
	defet.set_deferred("visible",true)
func _on_area_2d_3_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().paused=true
	defet.set_deferred("visible",true)
func _on_area_2d_4_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return
	get_tree().paused=true
	defet.set_deferred("visible",true)
func _on_blue_cand_body_entered(body: Node2D) -> void:
	bcand.set_deferred('visible',false)
	bcand.set_deferred('monitorabale',false)
	obl=1
