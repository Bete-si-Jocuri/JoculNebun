extends KinematicBody2D

const GRAVITY = 400 #150
const AIR_FRICTION = 40
const FLY_FORCE = 7800 #5000
const FLY_FORCE_X = 5500 #3000
const ROTATE_RIGHT = .3


var _rotation = 0

var motion = Vector2.ZERO

var jump_input = false
var is_dead = false
var score 

func _ready():
	is_dead = false
	
func _process(_delta):
	$Sprite/AnimationPlayer.play("Fly")
	score  = global_position.x / 200
	$CanvasLayer/RichTextLabel.text = "Score: %d" % score

func _physics_process(delta):

	jump_input = Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("left_mouse")
	
	if jump_input: 
		motion.y = - FLY_FORCE * delta
		motion.x = FLY_FORCE_X * delta
		_rotation -= 12
		
	motion.y += GRAVITY * delta 
	motion.x -= AIR_FRICTION * delta
	var b = clamp(motion.x, 0, FLY_FORCE_X)
	motion.x = b
	_rotation += .4
	var a = clamp(_rotation,-5, 20)
	_rotation = a

	rotation_degrees = _rotation  
	
	motion = move_and_slide(motion)
	
func _on_Area2D_body_entered(body):
	pass
	if body.name != "LiliacCangur" and not is_dead:
		get_tree().paused  = true
		$CanvasLayer/RichTextLabel2.visible = true
		is_dead = true



func _on_VisibilityNotifier2D_screen_exited():
	get_tree().paused  = true
	$CanvasLayer/RichTextLabel2.visible = true
	is_dead = true
