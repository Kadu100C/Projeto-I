extends Node2D



func _on_para_o_começo_button_down() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu_inicial.tscn")
