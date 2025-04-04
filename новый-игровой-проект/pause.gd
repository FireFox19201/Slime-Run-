extends Control
func _on_1_lv_pressed() -> void:
	$".".set_deferred("visible",false)
	get_tree().paused=false
func _on_back_pressed() -> void:
	get_tree().paused=false
	get_tree().change_scene_to_file("res://scene/menu.tscn")
