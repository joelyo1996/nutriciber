extends ProgressBar
var barra= true
var barra1 = true
func _process(delta):
	value = Global.Energia	
	if Global.Energia <= 3999 && barra == true:
		$AnimacionBarra.play("BarraVerde")
		barra = false
	if Global.Energia <= 2000 && barra1 == true:
		$AnimacionBarra.play("BarraAmarrila")
		barra1 = false
	pass
