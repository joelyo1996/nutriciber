extends Node2D

func _on_AreaFrutilla_area_entered(area):
	if area.name == "AreaPersonaje":
		$AnimationPlayer.play("estrella")
		Global.agua = true
		yield(get_tree().create_timer(2),"timeout")
		Global.agua = false
		queue_free()
		
