extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func _process(delta):
	if Input.is_action_pressed("select_left"):
		pass
	elif Input.is_action_pressed("select_right"):
		pass
	else:
		pass
