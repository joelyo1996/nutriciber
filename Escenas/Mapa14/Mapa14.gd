extends Node2D

func _ready():
	$Personaje.position = Global.posicion_personaje 
	$Tronco.position = Global.tronco



func _on_Mapa13_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(1000,350)
		get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")
	if area.name == "AreaTronco":
		Global.tronco = Vector2 (900,375)
