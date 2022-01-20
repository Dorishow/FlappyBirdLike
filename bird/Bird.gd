extends KinematicBody2D

const GRAVITY = 900
const JUMPSPEED = 50
var velocity = Vector2()
var pressedJump
var screensize = Vector2()

func _ready(): screensize = get_viewport_rect().size

func _physics_process(delta):
	updatePressedJump()
	listen_input()
	apply_gravity()
	apply_motion(delta)
	clamp_position()

func listen_input(): if(pressedJump): jump()
func jump(): velocity.y = -JUMPSPEED * (GRAVITY / 2)
func apply_gravity(): if !is_on_floor(): velocity.y += GRAVITY
func apply_motion(delta): move_and_slide(velocity * delta, Vector2.UP)
func updatePressedJump(): pressedJump = Input.is_action_just_pressed("ui_up")
func clamp_position(): position.y = clamp(position.y, 0, screensize.y)
