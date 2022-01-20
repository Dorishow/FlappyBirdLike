extends KinematicBody2D

export(int) var speed = 3

func _physics_process(delta):
	autodeleteWhenIsNotVisible()
	move_and_collide(Vector2(-speed,0))
	pass

func autodeleteWhenIsNotVisible():
	if(position.x < -100):
		queue_free()
