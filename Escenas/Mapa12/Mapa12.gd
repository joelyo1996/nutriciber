extends Node2D

var posicionPersonaje = Vector2(100,100)
var a = Vector2(100,100)
func _ready():
	$Personaje.position = Global.posicion_personaje

func _on_Mapa13Abajo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,400)
		get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")


func _on_Mapa13Medio_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,200)
		get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")
	


func _on_Mapa11_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(900,200)
		get_tree().change_scene("res://Escenas/Mapa11/Mapa11.tscn")
	pass # Replace with function body.


func _on_Mapa13_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(50,0)
		get_tree().change_scene("res://Escenas/Mapa13/Mapa13.tscn")
	pass # Replace with function body.


func _on_pozo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(151,400)
		$Personaje.position = a
	pass 
