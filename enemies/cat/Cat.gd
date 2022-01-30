extends KinematicBody2D

export(int) var speed = 3

func _physics_process(delta):
	autodeleteWhenIsNotVisible()
	move_and_collide(Vector2(-speed,0))
	spriteFollowTarget()
	pass

func autodeleteWhenIsNotVisible():
	if(position.x < -100):
		queue_free()

func spriteFollowTarget():
	$targetSprite.global_position = $TargetCursor/Position2D.global_position
	pass
