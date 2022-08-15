extends Node2D

func _ready():
	Global.Energia = 2000
	yield(get_tree().create_timer(6),"timeout")
	get_tree().change_scene("res://Escenas/Mapa14/Mapa14.tscn")
	pass # Replace with function body.

