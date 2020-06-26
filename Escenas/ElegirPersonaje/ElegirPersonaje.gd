extends Node2D

func _ready():
	if Global.silencio:
		$ReproductorMusica.stop()
	else:
		$ReproductorMusica.play()
	$Avanzar.disabled 
	
	
func _physics_process(delta):
	if Global.is_inside1 == false &&  Global.is_inside3 == false && Global.is_inside2  == false:
		$AnimationPlayer.play("boton")
		$Avanzar.disabled = false
		Global.is_inside1 = true
func _on_Avanzar_pressed():
	Global.is_inside1 = true
	Global.is_inside2 = true
	Global.is_inside3 = true
	Global.espera = 1
	get_tree().change_scene("res://Escenas/UI/Espera.tscn")
	pass 
