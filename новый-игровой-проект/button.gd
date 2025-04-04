extends StaticBody2D
@onready var collision = $door/CollisionShape2D2
@onready var spr = $door/Sprite2D2
func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	collision.set_deferred("disabled",true)
	spr.set_deferred("visible",false)
