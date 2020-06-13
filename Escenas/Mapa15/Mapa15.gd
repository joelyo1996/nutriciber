extends Node2D

func _ready():
	$Personaje.position = Global.posicion_personaje 
	$Globo.visible = false
	$texto.visible = false
	
func _on_Arriba_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(1000,200)
		Global.tronco = Vector2(450,500)
		get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")


func _on_Abajo_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.posicion_personaje = Vector2(1000,500)
		Global.tronco = Vector2(450,500)
		get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")
	


func _on_AreaXylon_area_entered(area):
	if area.name == "AreaPersonaje":
		Global.Ganaste = true
		Global.Energia = 0
		$texto.visible = true
		$Globo.visible = true
		$AnimationPlayer.play("final")
	pass # Replace with function body.


func _on_Menu_pressed():
	get_tree().change_scene("res://Escenas/menu/Creditos.tscn")
