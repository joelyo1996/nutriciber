extends Node2D

var texto1 = "Después de comer hay \n que esperar 30 minutos \n para salir a jugar"
var texto2 = "Lxs habitantes de Jose C.Paz saben muy bien que no \n  deben adentrarse en el bosque prohibido. \n Cuentan las antiguas historias que en \n él habita un temible brujo con cuernos curvos y ojos amarillos. \n Nuestrx protagonista no teme a viejos cuentos y \n tras un buen almuerzo saldrá a explorar el sombrío bosque."
var texto3="El viejo mago logrosu cometido \n poder comersu comida preferida \n ¿dejara en paz ala gente? \n "
func _ready():
	if Global.espera == 1:
		$Label.text = texto2
	if Global.espera == 2:
		$Label.text = texto1

func _on_TextureButton_pressed():
	if Global.espera == 2:
		get_tree().change_scene("res://Escenas/Mapa11/Mapa11.tscn")
	if Global.espera == 1:
		get_tree().change_scene("res://Escenas/AlimentandoPersonaje/AlimentandoPersonaje.tscn")
	if Global.Ganaste ==1:
		get_tree().change_scene("res://Escenas/SegundoMenu/SegundoMenu.tscn")
	pass # Replace with function body.
