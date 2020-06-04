extends Node2D

func _ready():
	$Avanzar.disabled 
	
func _physics_process(delta):
	if Global.pos4 == true:
		$AnimationPlayer.play("boton")
		$Avanzar.disabled = false
		Global.is_inside1 = true
		Global.pos4 = false
		Global.pos1 = false
		Global.pos2 = false
		Global.pos3 = false
func _on_Avanzar_pressed():
	Global.is_inside1 = true
	Global.is_inside2 = true
	Global.is_inside3 = true
	Global.posicion_personaje = Vector2(100,100)
	get_tree().change_scene("res://Escenas/UI/Espera.tscn")
	pass 
