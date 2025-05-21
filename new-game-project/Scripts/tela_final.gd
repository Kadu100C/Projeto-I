extends CanvasLayer

@onready var label: Label = $Label



func _on_button_pressed() -> void:
	AnimationFade.load_scene("res://Scenes/menu_inicial.tscn")
	#get_tree().change_scene_to_file("res://Scenes/menu_inicial.tscn")
