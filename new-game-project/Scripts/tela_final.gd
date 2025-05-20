extends CanvasLayer

@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	AnimationFade.load_scene("res://Scenes/menu_inicial.tscn")
	#get_tree().change_scene_to_file("res://Scenes/menu_inicial.tscn")



func _add_point():
	label.text = " str(Globals.coins += 0) "
