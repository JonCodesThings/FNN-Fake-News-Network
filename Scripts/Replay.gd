extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var count = 50
var headlines = PoolStringArray()
var score = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func get_data(headline_data, score):
	headlines = headline_data
	score = score
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass
