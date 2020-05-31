extends Node2D

func _on_AreaFrutilla_area_entered(area):
	if area.name == "AreaPersonaje":
		queue_free()
