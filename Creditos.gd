extends Node2D

func _ready():
	Global.fin = true
	if Global.silencio:
		$ReproductorMusica.stop()
	else:
		$ReproductorMusica.play()

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Escenas/SegundoMenu/SegundoMenu.tscn")
