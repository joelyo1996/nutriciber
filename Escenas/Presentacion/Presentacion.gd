extends Node2D

func _on_Timer_timeout():
	$AnimationPlayer.play("departamento")
	$TimerPSYC.start()

func _on_Timer2_timeout():
	$AnimationPlayer.play("PSYC")
	$TimerSalir.start()

func _on_TimerSalir_timeout():
	get_tree().change_scene("res://Escenas/menu/Menu.tscn")
