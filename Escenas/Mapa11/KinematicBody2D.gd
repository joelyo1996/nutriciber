extends KinematicBody2D
var salto= 100
var spee = 150
var move = Vector2(0,-1)
var direccion 
var saltando = false
var veri = true
func _physics_process(delta):
	if veri == true:
		if Global.peloCorto:
			$CortoSalto.visible = true
			veri = false
		if Global.largoSalto == true:
			$LargoCaminar.visible = true
			veri = false
	if saltando == false:
		move.y = salto
	if Input.is_action_pressed("ui_up") && !saltando== true && Global.Energia != 0 :
		$AudioSaltar.play()
		$LargoCaminar.visible = false
		$SpritePersonaje.visible = false
		$LargoCaminar.visible = false
		if Global.peloCorto:
			$LargoSalto.visible = false
			$SpriteSalto.visible = false
			$CortoSalto.visible = true
			$AnimationPersonaje.play("Salto_corto")
			saltando = true
			move.y = -salto
			Global.Energia = Global.Energia - 10
			yield(get_tree().create_timer(1),"timeout")
			move.y = +salto
			yield(get_tree().create_timer(1),"timeout")
			salto = 100
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
			move.y = -salto
			Global.Energia = Global.Energia - 10
			yield(get_tree().create_timer(1),"timeout")
			move.y = +salto
			yield(get_tree().create_timer(1),"timeout")
			salto = 100
			saltando = false
			$SpriteSalto.visible = false
			$AudioSaltar.stop()
			$LargoSalto.visible = false
			$LargoCaminar.visible=true
	
	if Input.is_action_pressed("ui_right")&& Global.Energia != 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		else:
			$LargoCaminar.visible = false
			$AnimationPersonaje.play("caminar_largo")
		move.x = spee
		$SpritePersonaje.flip_h = false
		$SpriteSalto.flip_h = false
		$LargoCaminar.flip_h = false
		$LargoSalto.flip_h = false
		Global.Energia = Global.Energia - 1
	if Input.is_action_pressed("ui_left")&& Global.Energia != 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$AnimationPersonaje.play("caminar_largo")
		else:
			$AnimationPersonaje.play("caminar_largo")
		move.x = -spee
		$SpritePersonaje.flip_h = true
		$SpriteSalto.flip_h = true
		$LargoCaminar.flip_h = true
		$LargoSalto.flip_h = true
		Global.Energia = Global.Energia - 1
	#Input.is_action_just_released("abajo") or Input.is_action_just_released("arriba") or Input.is_action_just_released("abajo") or 
	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		move.x = 0
		$AudioPersonaje.stop()
		
	if is_on_floor():
		move.y = 0
		$SpritePersonaje.visible = false
		$SpriteSalto.visible = false
		
	move_and_slide(move,Vector2(0,0))
	if Input.is_action_just_pressed("ui_left"):
		$AudioPersonaje.play()
	if Input.is_action_just_pressed("ui_right"):
		$AudioPersonaje.play()
		
func _on_Area2D_area_entered(area):
	if area.name == "AreaFrutilla":
		Global.Energia = Global.Energia + 1000
		
	pass 

func _on_TextureButton_pressed():
	if !saltando== true && Global.Energia != 0 :
		if Global.largoSalto == true:
			$LargoSalto.visible = true
			$SpriteSalto.visible = false
			$AnimationPersonaje.play("salto")
		$AudioSaltar.play()
		$LargoSalto.visible = true
		$LargoCaminar.visible = false
		saltando = true
		move.y = -salto
		Global.Energia = Global.Energia - 1
		yield(get_tree().create_timer(1),"timeout")
		move.y = +salto
		yield(get_tree().create_timer(1),"timeout")
		salto = 100
		saltando = false
		$LargoSalto.visible = false
		$LargoCaminar.visible = true
		$AudioSaltar.stop()
	if  !saltando == true && Input.is_action_pressed("ui_right")&& Global.Energia != 0:
			$SpriteSalto.visible = true
			$SpritePersonaje.visible = false
			$AnimationPlayer.play("saltar")
			saltando = true
			move.y = -salto
			yield(get_tree().create_timer(1),"timeout")
			move.y = +salto
			yield(get_tree().create_timer(1),"timeout")
			salto = 100
			saltando = false
			$SpritePersonaje.visible = true
			$SpriteSalto.visible = false
			Global.Energia = Global.Energia - 1
	pass 

func _on_Izquierda_button_down():
	if Global.Energia != 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		$AudioPersonaje.play()
		move.x = -spee
		$LargoCaminar.flip_h = true
		$LargoSalto.flip_h = true
		Global.Energia = Global.Energia - 1
		yield(get_tree().create_timer(0.5),"timeout")
		move.x = 0
		$AudioPersonaje.stop()
	pass # Replace with function body.



func _on_Derecha_button_up():
	if  Global.Energia != 0:
		if Global.largoSalto == true && !saltando== true:
			$LargoCaminar.visible = true
			$SpritePersonaje.visible = false
			$AnimationPersonaje.play("caminar_largo")
		$AudioPersonaje.play()
		move.x = spee
		$LargoCaminar.flip_h = false
		$LargoSalto.flip_h = false
		Global.Energia = Global.Energia - 1
		yield(get_tree().create_timer(0.5),"timeout")
		move.x = 0
		$AudioPersonaje.stop()
	pass 
	
