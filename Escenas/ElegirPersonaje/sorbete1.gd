extends Sprite

var fin = true
var is_inside = false
var con  = 0
var mauseIn = false
var a = true
var posicion = Vector2(518,60)

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


func _on_Area2D_area_entered(area):

	pass # Replace with function body.


func _on_Area_pocicion_area_entered(area):
	if area.name == "1":
		fin = false
		is_inside = false
		position = posicion
		Global.is_inside1 = false
		Global.largoSalto = true
	pass # Replace with function body.


func _on_Area2D2_area_entered(area):
	
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Global.is_inside1  == true:
		if fin == true:
			if event.is_action_pressed("left_click"):
				is_inside = true
			if event.is_action_released("left_click"):
				is_inside = false
	pass 
