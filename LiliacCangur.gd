extends KinematicBody2D

const GRAVITY = 150 
const FLY_FORCE = 5000 
const FLY_FORCE_X = 3000

var motion = Vector2.ZERO

var jump_input = false
var is_dead = false

func _ready():
	is_dead = false
	
func _process(delta):
	$Sprite/AnimationPlayer.play("Fly")
	$CanvasLayer/RichTextLabel.text = "Score: %d" % (global_position.x / 200)
	
func _physics_process(delta):
	
	jump_input = Input.is_action_just_pressed("ui_accept")
	
	if jump_input: 
		motion.y = - FLY_FORCE * delta
		motion.x = FLY_FORCE_X * delta
	
	motion.y += GRAVITY * delta 
	
	motion = move_and_slide(motion)
	
	
func _on_Area2D_body_entered(body):
	if body.name != "LiliacCangur" and not is_dead:
		get_tree().paused  = true
		$CanvasLayer/RichTextLabel2.visible = true
		is_dead = true
		


func _on_VisibilityNotifier2D_screen_exited():
	get_tree().paused  = true
	$CanvasLayer/RichTextLabel2.visible = true
	is_dead = true
