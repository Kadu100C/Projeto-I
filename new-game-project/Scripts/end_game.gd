extends Area2D


@onready var end_timer: Timer = $end_timer


func _on_body_entered(body: Node2D) -> void:
	get_tree().call_group("Player", "die")
	end_timer.start()


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/tela_final.tscn")
