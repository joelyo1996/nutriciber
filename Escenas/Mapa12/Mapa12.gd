extends Node2D

var posicionPersonaje = Vector2(100,100)

func _ready():
	$Personaje.position = Global.posicion_personaje
	
func _on_Mapa11_body_entered(body):
	Global.posicion_personaje = Vector2(1000,200)
	get_tree().change_scene("res://Escenas/Mapa11/Mapa11.tscn")


func _on_pozo_body_entered(body):
	$Personaje.position = posicionPersonaje


func _on_Mapa13_body_entered(body):
	Global.posicion_personaje = Vector2(0,0)
	get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")
	pass 


func _on_Mapa13Abajo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,400)
		get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")
