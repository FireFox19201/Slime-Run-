extends StaticBody2D
@export var player:CharacterBody2D
func _on_area_2d_body_entered(body: Node2D) -> void:
	player.set_deferred("jump_force",5500)
func _on_area_2d_body_exited(body: Node2D) -> void:
	player.set_deferred("jump_force",3700)
