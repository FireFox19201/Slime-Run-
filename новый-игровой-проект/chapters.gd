extends Control
func _on_1_ch_pressed() -> void:
	get_tree().change_scene_to_file("res://levels_1.tscn")
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/menu.tscn")
