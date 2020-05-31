extends KinematicBody2D

var gravedad = 10
var mover = 10
var move = Vector2(0,-1)
func _physics_process(delta):
	position.y = gravedad + position.y
	if is_on_floor():
		move.y = 0
	move_and_slide(move)


func _on_AreaPiedra_area_entered(area):
	if area.name == "AreaPersonaje":
		position.x = position.x + mover
		Global.Energia = Global.Energia - 50
		
