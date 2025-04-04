extends Node
var level: int=0
func next():
	if level!=5:
		level+=1
		get_tree().change_scene_to_file("res://"+str(level)+".tscn")
	else:
		get_tree().change_scene_to_file("res://menu.tscn")
		
