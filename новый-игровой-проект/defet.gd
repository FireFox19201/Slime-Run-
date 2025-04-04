extends Control
func _on_1_lv_pressed() -> void:
	get_tree().paused=false
	get_tree().reload_current_scene()
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/menu.tscn")
	get_tree().paused=false
