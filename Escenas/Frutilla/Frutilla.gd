extends Node2D

func _on_AreaFrutilla_area_entered(area):
	if area.name == "AreaPersonaje":
		$AudioStreamPlayer.play()
		yield(get_tree().create_timer(0.5),"timeout")
		queue_free()
