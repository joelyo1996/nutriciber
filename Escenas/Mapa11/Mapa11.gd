extends Node2D

var a = Vector2(100,100)

func _ready():
	$Personaje.position = Global.posicion_personaje 
	
func _on_Mapa12_body_entered(body):
	Global.posicion_personaje = Vector2(100,200)
	get_tree().change_scene("res://Escenas/Mapa12/Mapa12.tscn")


func _on_Mapa13_body_entered(body):
	Global.posicion_personaje = Vector2(151,400)
	$Personaje.position = a
	pass # Replace with function body.
