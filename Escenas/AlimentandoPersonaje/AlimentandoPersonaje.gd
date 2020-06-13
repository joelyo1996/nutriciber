extends Node2D
var tipo = 0
func _ready():
	$Avanzar.disabled 
	$Titulo/TildeVerde.visible = false
	$Titulo/TildeVerde2.visible = false
	$Titulo/TildeVerde3.visible = false
	tipo = 0
	
func _physics_process(delta):
	if Global.pos4 == true:
		if Global.Energia < 6000:
			$Aleta.visible = false
			$Reiniciar.visible = true
			$Reiniciar.disabled = false
			$Avanzar.visible = false
		else:
			$Avanzar.visible = true
		$AnimationPlayer.play("boton")
		$Avanzar.disabled = false
		Global.is_inside1 = true
		Global.pos4 = false
		Global.pos1 = false
		Global.pos2 = false
		Global.pos3 = false
	if Global.tipo == 3 :
		$Titulo/TildeVerde3.visible = true
		tipo = tipo +1 
	if Global.tipo == 2 :
		$Titulo/TildeVerde2.visible = true
		tipo = tipo +1 
	if Global.tipo == 1 :
		$Titulo/TildeVerde.visible = true
		tipo = tipo +1 
	if tipo == 3:
		$Titulo/TildeVerde.visible = false
		$Titulo/TildeVerde2.visible = false
		$Titulo/TildeVerde3.visible = false
		Global.Energia = Global.Energia + 2000
func _on_Avanzar_pressed():
	Global.is_inside1 = true
	Global.is_inside2 = true
	Global.is_inside3 = true
	Global.posicion_personaje = Vector2(100,100)
	get_tree().change_scene("res://Escenas/UI/Espera.tscn")
	pass 


func _on_Reiniciar_pressed():
	Global.Energia = 0
	$Vegetales.position = Vector2(161.872,216.571)
	$CarneRoja.position = Vector2(71.459,221.675)
	$Choclos.position = Vector2(239.713,208.245)
	$PapasFritas.position = Vector2 (74.878,293.659)
	$Hamburguesa.position = Vector2 (156.652,296.089)
	$FrutosSecos.position = Vector2 (234.411,297.58)
	$Pescado.position = Vector2 (244.406,353.378)
	$Spaguetti.position = Vector2 (165.467,350.501)
	$Falafel.position = Vector2 (73.073,359.179)
	$Aleta.visible = false
	$Avanzar.visible = false
	$Titulo/TildeVerde.visible = false
	$Titulo/TildeVerde2.visible = false
	$Titulo/TildeVerde3.visible = false
	$Reiniciar.visible = false
	Global.fin = false
	Global.pos1 = false
	Global.pos2 = false
	Global.pos3 = false
	Global.pos4 = false
	Global.tipo = 0
