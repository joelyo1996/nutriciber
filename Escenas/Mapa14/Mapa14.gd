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


func _on_Arriba_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,200)
		get_tree().change_scene("res://Escenas/Mapa15/Mapa15.tscn")
	pass # Replace with function body.


func _on_Abajo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,500)
		get_tree().change_scene("res://Escenas/Mapa15/Mapa15.tscn")
	pass # Replace with function body.
