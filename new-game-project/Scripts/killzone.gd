extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	timer.start()
	Globals.alive = false
	Globals.dead = true


func _on_timer_timeout() -> void:
	Globals.alive = true
	Globals.dead = false
	get_tree().reload_current_scene()
