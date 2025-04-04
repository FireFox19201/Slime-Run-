extends Control
func _on_1_lv_pressed() -> void:
	PashaGlobal.level=0
	get_tree().change_scene_to_file("res://scene/node_2d.tscn")
func _on_2_lv_pressed() -> void:
	PashaGlobal.level=1
	get_tree().change_scene_to_file("res://2.tscn")
func _on_3_lv_pressed() -> void:
	PashaGlobal.level=2
	get_tree().change_scene_to_file("res://3.tscn")
func _on_4_lv_pressed() -> void:
	PashaGlobal.level=3
	get_tree().change_scene_to_file("res://4.tscn")
func _on_5_lv_pressed() -> void:
	PashaGlobal.level=4
	get_tree().change_scene_to_file("res://5.tscn")
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Chapters.tscn")
