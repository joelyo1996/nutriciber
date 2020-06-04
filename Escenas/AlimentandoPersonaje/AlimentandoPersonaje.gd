extends Node2D
var tipo = 0
func _ready():
	$Avanzar.disabled 
	$Titulo/TildeVerde.visible = false
	tipo = 0
	
func _physics_process(delta):
	if Global.pos4 == true:
		if Global.Energia < 6000:
			$Aleta.visible = true
			$Reiniciar.visible = true
			$Reiniciar.disabled = false
		$Avanzar.visible = true
		$AnimationPlayer.play("boton")
		$Avanzar.disabled = false
		Global.is_inside1 = true
		Global.pos4 = false
		Global.pos1 = false
		Global.pos2 = false
		Global.pos3 = false
	if Global.tipo == 3 :
		$Titulo/TildeVerde.visible = true
		$Titulo/TildeVerde.position.y = 190
		tipo = tipo +1 
	if Global.tipo == 2 :
		$Titulo/TildeVerde.visible = true
		$Titulo/TildeVerde.position.y = 120
		tipo = tipo +1 
	if Global.tipo == 1 :
		$Titulo/TildeVerde.visible = true
		$Titulo/TildeVerde.position.y = 50
		tipo = tipo +1 
	if tipo == 3:
		$Titulo/TildeVerde.visible = false
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
	$Vegetales.position = Vector2(136.933,126)
	$CarneRoja.position = Vector2(59,124)
	$Choclos.position = Vector2(213,119)
	$PapasFritas.position = Vector2 (73,214)
	$Hamburguesa.position = Vector2 (138,215)
	$FrutosSecos.position = Vector2 (213,219)
	$Pescado.position = Vector2 (226,285)
	$Spaguetti.position = Vector2 (147,284)
	$Falafel.position = Vector2 (66,287)
	$Aleta.visible = false
	$Avanzar.visible = false
	$Titulo/TildeVerde.visible = false
	$Reiniciar.visible = false
	Global.fin = false
	Global.pos1 = false
	Global.pos2 = false
	Global.pos3 = false
	Global.pos4 = false
	Global.tipo = 0
