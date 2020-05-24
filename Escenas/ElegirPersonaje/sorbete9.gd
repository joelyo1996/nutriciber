extends Sprite

# Declare member variables here. Examples:
var posicion =Vector2(573,432)
var con  = 0
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
		

	pass
func _on_Area2D_mouse_entered():
	mauseIn = true
	

func _on_Area2D_mouse_exited():
	mauseIn = false


func _on_Area2D_area_entered(area):

	pass # Replace with function body.


func _on_Area_pocicion_area_entered(area):
	
	pass # Replace with function body.


func _on_Area2D2_area_entered(area):
	if area.name == "9":
		position = posicion
		a = false
		global.sorbete = global.sorbete + 1
		
	pass # Replace with function body.
