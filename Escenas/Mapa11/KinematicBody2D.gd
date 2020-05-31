extends KinematicBody2D
var salto= 200
var spee = 150
var move = Vector2(0,100)
var direccion 
var saltando = false
var veri = true
func _physics_process(delta):
	if veri == true:
		if Global.peloCorto:
			$CortoSalto.visible = true
			$LargoCaminar.visible = false
			veri = false
		if Global.largoSalto == true:
			$LargoCaminar.visible = true
			$CortoSalto.visible = false
			veri = false
	if Input.is_action_pressed("ui_up") && !saltando== true && Global.Energia > 0 :
		$AudioSaltar.play()
		$LargoCaminar.visible = false
		$SpritePersonaje.visible = false
		$LargoCaminar.visible = false
		if Global.peloCorto:
			$CortoCaminar.visible = false
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = true
			$AnimationPersonaje.play("Salto_corto")
			saltando = true
			_salto()
			Global.Energia = Global.Energia - 10
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = 400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible = false
		
		if Global.largoSalto == true:
			$LargoSalto.visible = true
			$SpriteSalto.visible = false
			$AnimationPersonaje.play("salto")
			saltando = true
			_salto()
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = 400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible=true
	
	if Input.is_action_pressed("ui_right")&& Global.Energia > 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		if Global.peloCorto:
			$LargoCaminar.visible = false
			$CortoCaminar.visible = true
			$CortoSalto.visible = false
			$AnimationPersonaje.play("corto_caminar")
		move.x = spee
		$SpritePersonaje.flip_h = false
		$SpriteSalto.flip_h = false
		$LargoCaminar.flip_h = false
		$LargoSalto.flip_h = false
		$CortoCaminar.flip_h = false
		Global.Energia = Global.Energia - 1
	if Input.is_action_pressed("ui_left")&& Global.Energia > 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$AnimationPersonaje.play("caminar_largo")
		if Global.peloCorto:
			$LargoCaminar.visible = false
			$CortoCaminar.visible = true
			$CortoSalto.visible = false
			$AnimationPersonaje.play("corto_caminar")
		move.x = -spee
		$SpritePersonaje.flip_h = true
		$SpriteSalto.flip_h = true
		$LargoCaminar.flip_h = true
		$LargoSalto.flip_h = true
		$CortoCaminar.flip_h = true
		Global.Energia = Global.Energia - 1
	#Input.is_action_just_released("abajo") or Input.is_action_just_released("arriba") or Input.is_action_just_released("abajo") or 
	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		move.x = 0
		$AudioPersonaje.stop()
	
	if !is_on_floor():
		if saltando == false:
			move.y = 400
	if is_on_floor():
		move.y = 0
		$SpritePersonaje.visible = false
		$SpriteSalto.visible = false
		saltando = false
	move_and_slide(move)
	if Input.is_action_just_pressed("ui_left"):
		$AudioPersonaje.play()
	if Input.is_action_just_pressed("ui_right"):
		$AudioPersonaje.play()
		
func _on_Area2D_area_entered(area):
	if area.name == "AreaFrutilla":
		Global.Energia = Global.Energia + 500
		
	pass 

func _on_TextureButton_pressed():
	if !saltando== true && Global.Energia > 0 :
		if Global.largoSalto == true:
			$LargoSalto.visible = true
			$SpriteSalto.visible = false
			$AnimationPersonaje.play("salto")
		$AudioSaltar.play()
		if Global.peloCorto:
			$CortoCaminar.visible = false
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = true
			$AnimationPersonaje.play("Salto_corto")
			saltando = true
			_salto()
			Global.Energia = Global.Energia - 10
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = 400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible = false
		
		if Global.largoSalto == true:
			$LargoCaminar.visible = false
			$LargoSalto.visible = true
			$SpriteSalto.visible = false
			$AnimationPersonaje.play("salto")
			saltando = true
			_salto()
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = 400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible=true
	if  !saltando == true && Input.is_action_pressed("ui_right")&& Global.Energia > 0:
		$AudioSaltar.play()
		
		if Global.peloCorto:
			$CortoCaminar.visible = false
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = true
			$AnimationPersonaje.play("Salto_corto")
			saltando = true
			_salto()
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = 400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible = false
		
		if Global.largoSalto == true:
			$LargoSalto.visible = true
			$SpriteSalto.visible = false
			$LargoCaminar.visible = false
			$AnimationPersonaje.play("salto")
			saltando = true
			_salto()
			yield(get_tree().create_timer(0.5),"timeout")
			move.y = +400
			salto = 200
			yield(get_tree().create_timer(1),"timeout")
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible=true
	pass 

func _on_Izquierda_button_down():
	if Global.Energia >0:
		$SpritePersonaje.flip_h = true
		$SpriteSalto.flip_h = true
		$LargoCaminar.flip_h = true
		$LargoSalto.flip_h = true
		$CortoCaminar.flip_h = true
		if Global.peloCorto:
			$CortoCaminar.visible = true
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = false
			$AnimationPersonaje.play("corto_caminar")
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		$AudioPersonaje.play()
		move.x = -100
		$LargoCaminar.flip_h = true
		$LargoSalto.flip_h = true
		Global.Energia = Global.Energia - 1
		yield(get_tree().create_timer(0.5),"timeout")
		$AudioPersonaje.stop()
	pass # Replace with function body.



func _on_Derecha_button_up():
	if  Global.Energia > 0:
		$SpritePersonaje.flip_h = false
		$SpriteSalto.flip_h = false
		$LargoCaminar.flip_h = false
		$LargoSalto.flip_h = false
		$CortoCaminar.flip_h = false
		if Global.peloCorto:
			$CortoCaminar.visible = true
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = false
			$AnimationPersonaje.play("corto_caminar")
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		$AudioPersonaje.play()
		move.x = 100
		$LargoCaminar.flip_h = false
		$LargoSalto.flip_h = false
		Global.Energia = Global.Energia - 1
		yield(get_tree().create_timer(0.5),"timeout")
		
		$AudioPersonaje.stop()
	pass 
	
func _salto():
	if Global.Energia > 4800:
		move.y = -salto * 1.8
	if Global.Energia < 4800 && Global.Energia > 2400:
		move.y = -salto * 1.4
	if Global.Energia < 2400 && Global.Energia > 1200:
		move.y = -salto * 1.2
	if Global.Energia < 1200 && Global.Energia > 0:
		move.y = -salto * 1


func _on_Izquierda_toggled(button_pressed):
	move.x = 0
	pass # Replace with function body.
