extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var headline = preload("res://Scripts/Headline.gd")
	var headline_left = headline.new()
	var headline_right = headline.new()
	add_child(headline_left)
	add_child(headline_right)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
