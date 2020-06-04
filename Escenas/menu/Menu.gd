extends Node2D

func _ready():
	if Global.silencio:
		$Sonido.pressed = true
		$ReproductorMusica.stop()
	else:
		$ReproductorMusica.play()

func _on_Play_pressed():
	reproducir_sonido_botones()
	salir()
	get_tree().change_scene("res://Escenas/SegundoMenu/SegundoMenu.tscn")
	pass 

func _on_Sonido_pressed():
	reproducir_sonido_botones()
	if Global.silencio:
		Global.silencio = false
		$ReproductorMusica.play()
	else:
		$ReproductorMusica.stop()
		Global.silencio = true
	pass 

func _on_Creditos_pressed():
	reproducir_sonido_botones()
	salir()
	yield(get_tree().create_timer(2),"timeout")
	get_tree().change_scene("res://Escenas/menu/Creditos.tscn")
	pass

func _on_Salir_pressed():
	salir()
	reproducir_sonido_botones()
	
	get_tree().quit()
	pass 

func reproducir_sonido_botones():
	$AudioBotones.play()
	yield(get_tree().create_timer(0.4),"timeout")
	$AudioBotones.stop()
	pass

func salir():
	$AnimationPlayer.play("salir")
	
