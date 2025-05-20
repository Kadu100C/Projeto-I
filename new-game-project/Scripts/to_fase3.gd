extends Area2D


func _on_body_entered(body: CharacterBody2D):
	AnimationFade.load_scene("res://Scenes/fase_3.tscn")
	#get_tree().change_scene_to_file("res://Scenes/fase_3.tscn")
