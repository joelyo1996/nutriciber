extends ProgressBar
var barra1= true
var barra2 = true
var barra3 = true
func _process(delta):
	value = Global.Energia
	if Global.Energia > 3999 && barra1 == true:
		$AnimacionBarra.play("BarraVerde")
		barra1 = false
		barra2 = true
		barra3 = true
	if Global.Energia <= 3999 && barra2 == true:
		$AnimacionBarra.play("BarraAmallira")
		barra1 = true
		barra2 = false
		barra3 = true
	if Global.Energia <= 2000 && barra3 == true:
		$AnimacionBarra.play("BarraRoja")
		barra1 = true
		barra2 = true
		barra3 = false
	pass
