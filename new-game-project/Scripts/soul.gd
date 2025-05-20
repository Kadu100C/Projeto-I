extends Area2D

var souls := 1

func _on_body_entered(body: Node2D) -> void:
	Globals.coins += souls
	queue_free()
