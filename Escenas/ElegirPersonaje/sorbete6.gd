extends Sprite

# Declare member variables here. Examples:
# var a = 2
var fin = true
var is_inside = false
var posicion =Vector2(644.663,338.031)
var mauseIn = false
var a = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
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
	if area.name == "6":
		fin = false
		is_inside = false
		position = posicion
		Global.is_inside3 = false
		Global.LargoPlata = Global.LargoPlata + 1
		Global.CortoPlata = Global.CortoPlata + 1
	pass 


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Global.is_inside3  == true:
		if fin == true:
			if event.is_action_pressed("left_click"):
				is_inside = true
			if event.is_action_released("left_click"):
				is_inside = false
	pass # Replace with function body.

