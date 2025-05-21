extends CanvasLayer



func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/fase_1.tscn")
	print_debug("okay")
	Globals.coins = 0

func _on_quit_game_pressed() -> void:
	get_tree().quit()
