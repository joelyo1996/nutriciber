extends Node2D
func _ready():
	$BotonReintentar.disabled = true
func _process(delta):
	$Energia.text = String(Global.Energia)
	if Global.Energia <= 0:
		$Reintentar.visible = true
		$BotonReintentar.visible = true
		$BotonReintentar.disabled = false
		$Energia.visible = false
	pass



func _on_BotonReintentar_pressed():
	$BotonReintentar.disabled = true
	$Reintentar.visible = false
	$BotonReintentar.visible = false
	Global.fin = false
	get_tree().change_scene("res://Escenas/ElegirPersonaje/ElegirPersonaje.tscn")
	pass 
