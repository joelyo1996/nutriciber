extends Sprite

var fin = true
var is_inside = false
var posicion =Vector2(515,270)
var mauseIn = false
var a = true

func _process(delta):
	if a == true :
		if (mauseIn == true && Input.is_action_pressed("click")):
			set_position(get_viewport().get_mouse_position())
	if is_inside:
		self.set_global_position(get_global_mouse_position())

	pass
func _on_Area2D_mouse_entered():
	mauseIn = true
	

func _on_Area2D_mouse_exited():
	mauseIn = false

func _on_Area2D2_area_entered(area):
	if area.name == "1":
		Global.Energia = Global.Energia + 2000
		fin = false
		is_inside = false
		Global.pos1 = true
		if Global.pos3 == true:
			position = Global.posicion3
			Global.pos2 = false
			Global.pos1 = false
			Global.pos4 = true
		if Global.pos2 == true:
			position = Global.posicion2
			Global.pos3 = true
			Global.pos2 = false
			Global.pos1 = false
		if Global.pos1 == true:
			position = Global.posicion1
			Global.pos2 = true
			Global.pos3 = false
			Global.pos1 = false


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Global.is_inside3  == true:
		if fin == true:
			if event.is_action_pressed("left_click"):
				is_inside = true
			if event.is_action_released("left_click"):
				is_inside = false
	pass # Replace with function body.


