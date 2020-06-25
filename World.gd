extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var last_position = -200

var stalp = load("Stalp.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if $LiliacCangur.global_position.x > last_position + 200:
		last_position = $LiliacCangur.global_position.x
		
		var stalp_1 = stalp.instance()
		var stalp_2 = stalp.instance()
		
		var h1 = randi() % (50 + 50 + 1) - 50

		stalp_1.set_position(Vector2(last_position + 400, h1))
		stalp_2.set_position(Vector2(last_position + 400, h1 + 260))
		stalp_2.global_rotation = 0
		add_child(stalp_1)
		add_child(stalp_2)

	
