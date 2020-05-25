extends Node2D

func _ready():
	$Personaje.position = Global.posicion_personaje 
	
func _on_Arriba_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(1000,200)
		get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")


func _on_Abajo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(1000,500)
		get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")
	
