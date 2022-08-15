extends Node2D
func _ready():
	if Global.silencio:
		$ReproductorMusica.stop()
	else:
		$ReproductorMusica.play()
	$BotonReintentar.disabled = true
	$BotonReintentar.visible = false
	$Reintentar.visible = false
	
func _process(delta):
	if Global.Energia <= 0:
		$Reintentar.visible = true
		$BotonReintentar.visible = true
		$BotonReintentar.disabled = false
		$Cartel.visible = true
	pass



func _on_BotonReintentar_pressed():
	$BotonReintentar.disabled = true
	$Reintentar.visible = false
	$BotonReintentar.visible = false
	Global.fin = false
	$BotonReintentar.visible = false
	$Cartel.visible = false
	get_tree().change_scene("res://Escenas/AlimentandoPersonaje/AlimentandoPersonaje.tscn")
	pass 
