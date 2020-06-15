extends Node2D

func _ready():
	if Global.silencio:
		$ReproductorMusica.stop()
		$sonido.texture_pressed 
	else:
		$ReproductorMusica.play()
		$sonido.texture_normal 
		
func _on_NuevaPartida_pressed():
	get_tree().change_scene("res://Escenas/ElegirPersonaje/ElegirPersonaje.tscn")
	pass 

func _on_Salir_pressed():
	get_tree().quit()
	pass 


func _on_sonido_pressed():
	if Global.silencio:
		Global.silencio = false
		$ReproductorMusica.play()
	else:
		$ReproductorMusica.stop()
		Global.silencio = true
	pass # Replace with function body.
