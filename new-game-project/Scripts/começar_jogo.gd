extends Button




func _on_button_down():
	AnimationFade.load_scene("res://Scenes/fase_1.tscn")
	#get_tree().change_scene_to_file("res://Scenes/fase_1.tscn")
