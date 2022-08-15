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
		$texto.text = "Acercate, Te \n estaba esperando"
		yield(get_tree().create_timer(3),"timeout")
		$texto.text = "Hace años se ha \n roto la armonía entre humanos y \n habitantes del bosque"
		yield(get_tree().create_timer(3),"timeout")
		$texto.text = "Necesitó de tu ayuda para \n restaurar el equilibrio"
		yield(get_tree().create_timer(3),"timeout")
		$texto.text = "Me ayudarías?"
		get_tree().change_scene("res://Escenas/Mapa15/UNPAZ.tscn")
	pass # Replace with function body.


func _on_Menu_pressed():
	get_tree().change_scene("res://Escenas/menu/Creditos.tscn")
