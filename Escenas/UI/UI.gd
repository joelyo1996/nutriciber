extends Node2D


func _process(delta):
	$Energia.text = String(Global.Energia)
	if Global.Energia <= 0:
		$Energia.visible = false
		get_tree().change_scene("res://Escenas/ElegirPersonaje/ElegirPersonaje.tscn")
	pass

