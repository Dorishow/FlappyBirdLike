extends KinematicBody2D

func _physics_process(delta):
	autodeleteWhenIsNotVisible()
	move_and_collide(Vector2(-1,0))
	pass

func autodeleteWhenIsNotVisible():
	if(position.x < -100):
		queue_free()
