extends Node2D

func _ready():
	$Avanzar.disabled 
func _physics_process(delta):
	if Global.is_inside1 == false &&  Global.is_inside2 == false &&  Global.is_inside3 == false:
		$AnimationPlayer.play("boton")
		$Avanzar.disabled = false
		Global.is_inside1 = true
func _on_Avanzar_pressed():
	Global.is_inside1 = true
	Global.is_inside2 = true
	Global.is_inside3 = true
	get_tree().change_scene("res://Escenas/Mapa11/Mapa11.tscn")
	pass 