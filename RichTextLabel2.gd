extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = false

func _process(delta):
	if get_tree().get_root().get_child(0).get_child(0).is_dead and Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()


		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
