extends KinematicBody2D
var salto= 300
var spee = 100
var move = Vector2(0,-1)
var direccion 
var saltando 
func _physics_process(delta):
	if Input.is_action_pressed("ui_up") && !saltando== true && Global.Energia != 0 :
		$LargoCaminar.visible = false
		$SpritePersonaje.visible = false
		$LargoCaminar.visible = false
		$LargoSalto.visible = true
		saltando = true
		move.y = -salto
		$AnimationPersonaje.play("salto")
		yield(get_tree().create_timer(1),"timeout")
		move.y = +salto
		yield(get_tree().create_timer(2),"timeout")
		salto = 300
		saltando = false
		$SpriteSalto.visible = false
		$AudioSaltar.stop()
		$LargoSalto.visible = false
		$LargoCaminar.visible=true
		
	if Input.is_action_pressed("ui_right"):
		$LargoCaminar.visible = true
		move.x = spee
		$AnimationPersonaje.play("caminar_largo")
		$LargoCaminar.flip_h= false
	if Input.is_action_pressed("ui_left"):
		$LargoCaminar.visible = true
		move.x = -spee
		$AnimationPersonaje.play("caminar_largo")
		$LargoCaminar.flip_h= true
	#Input.is_action_just_released("abajo") or Input.is_action_just_released("arriba") or Input.is_action_just_released("abajo") or 
	if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		$AnimationPersonaje.stop()
		move.x = 0
	if is_on_floor():
		move.y = 0
		
	move_and_slide(move)
