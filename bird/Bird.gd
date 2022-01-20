extends KinematicBody2D

const gravity = 800
const jumpSpeed = 50
var velocity = Vector2()
var pressedJump

func _physics_process(delta):
	updatePressedJump()
	listen_input()
	apply_gravity()
	apply_motion(delta)
	pass

func listen_input(): if(pressedJump): jump()

func jump(): velocity.y = -jumpSpeed * (gravity / 2)

func apply_gravity(): if !is_on_floor(): velocity.y += gravity

func apply_motion(delta): move_and_slide(velocity * delta, Vector2.UP)

func updatePressedJump(): pressedJump = Input.is_action_just_pressed("ui_up")
