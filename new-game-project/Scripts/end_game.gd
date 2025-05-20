extends Area2D


@onready var endtimer: Timer = $endtimer



func _on_body_entered(body: CharacterBody2D):
	get_tree().call_group("Player", "die")
	endtimer.start()
func _on_endtimer_timeout():
	get_tree().change_scene_to_file("res://Scenes/tela_final.tscn")
