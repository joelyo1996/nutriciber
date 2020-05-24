extends Node2D

var posicionPersonaje = Vector2(100,100)

func _ready():
	$Personaje.position = Global.posicion_personaje 
	$Tronco.position = Global.tronco


func _on_Pozo_body_entered(body):
	$Personaje.position = posicionPersonaje


func _on_Mapa12_body_entered(body):
	Global.posicion_personaje = Vector2(1000,0)
	get_tree().change_scene("res://Escenas/Mapa12/Mapa12.tscn")




func _on_Mapa14_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(100,350)
		get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")
	if area.name == "AreaTronco":
		Global.tronco = Vector2 (150,375)
	pass # Replace with function body.
