extends Node2D

var tipo = 0
var texto1 = "Hola! Hoy es un gran dia.\n Saldremos a explorar el\n bosque!"
var texto2 = "Pero primero tenemos que \n armar un almuerzo muy \n nutritivo"
var texto3 = "Creo que hoy quiero comer \n unos falafels"
var texto4 = "Genial! con que mas lo puedo \n acompañar? \n en el plato entran dos \n alimetos mas."
var texto5 = "Cada alimento que eligamos nos \n da energia! \n Si elegimos buenos alimentos \n tendremos mas energia!"
var texto6 = "Arrastra dos alimetos mas al plato"
var texto7 = "Estamos listo para salir \n al bosque!"


func _ready():
	if Global.silencio:
		$ReproductorMusica.stop()
	else:
		$ReproductorMusica.play()
	$Avanzar.disabled 
	$Titulo/TildeVerde.visible = false
	$Titulo/TildeVerde2.visible = false
	$Titulo/TildeVerde3.visible = false
	tipo = 0
	$Nube.visible = true
	if Global.largoSalto == true:
		$CabezaLargo.visible = true
	elif Global.peloCorto == true:
		$CabezaCorto.visible = true
	$Texto.visible = true
	$Texto.text = texto1
	yield(get_tree().create_timer(3),"timeout")
	$Texto.text = texto2
	yield(get_tree().create_timer(3),"timeout")
	$Texto.text = texto3
	yield(get_tree().create_timer(3),"timeout")
	$Mano.visible= true
	$Mano2.visible = true
	$Circulo.visible = true
	$Nube.visible = false
	$Texto.visible = false
	$CabezaCorto.visible = false
	$CabezaLargo.visible = false
	
func _physics_process(delta):
	if Global.falafel == true:
		Global.falafel = false
		$Mano.visible= false
		$Mano2.visible = false
		$Circulo.visible = false
		$Nube.visible = true
		$Texto.visible = true
		if Global.largoSalto == true:
			$CabezaLargo.visible = true
		elif Global.peloCorto == true:
			$CabezaCorto.visible = true
		$Texto.text = texto4
		yield(get_tree().create_timer(2),"timeout")
		$Texto.text = texto5
		$Circulo2.visible = true
		yield(get_tree().create_timer(2),"timeout")
		$Nube.visible = false
		$Texto.visible = false
		$CabezaCorto.visible = false
		$CabezaLargo.visible = false
		$Label.visible = true
		$Circulo2.visible = false
	if Global.estrella == true:
		$Estrella.visible = true
		$AnimationPlayer.play("estrella")
		yield(get_tree().create_timer(2),"timeout")
		$Estrella.visible = false
		Global.estrella = false
	if Global.estrellaMedia == true:
		$EstrellasMedia.visible = true
		$AnimationPlayer.play("estrellaMedia")
		yield(get_tree().create_timer(2),"timeout")
		$EstrellasMedia.visible = false
		Global.estrellaMedia = false
	if Global.pos4 == true:
		if Global.Energia < 6000:
			$Cartel.visible = true
			$Aleta.visible = true
			$Reiniciar.visible = true
			$Reiniciar.disabled = false
			$Avanzar.visible = false
		else:
			$Nube.visible = true
			if Global.largoSalto == true:
				$CabezaLargo.visible = true
			elif Global.peloCorto == true:
				$CabezaCorto.visible = true
			$Texto.visible = true
			$Texto.text = texto7
			$Circulo.visible = true
			$Circulo.position = Vector2 (840,445)
			$Label.visible = false
			$Avanzar.visible = true
			Global.pos4 = true
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
	Global.espera = 2
	get_tree().change_scene("res://Escenas/UI/Espera.tscn")
	pass 


func _on_Reiniciar_pressed():
	$Cartel.visible = false
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

