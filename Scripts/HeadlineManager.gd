extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var headline = preload("res://Scripts/Headline.gd")
var headline_left = headline.new()
var headline_right = headline.new()
var string_arr = PoolStringArray()
var score_arr = PoolIntArray()
var left_child_index = -1
var right_child_index = -1
var headline_count = 0
var deltacount = 0

func load_headlines(path):
	var file = File.new()
	string_arr.resize(0)
	score_arr.resize(0)
	
	if file.file_exists(path):
		file.open(path, file.READ)
		while !file.eof_reached():
			string_arr.push_back(str(file.get_line()))
			score_arr.push_back(int(file.get_line()))
		file.close()
		headline_count = string_arr.size()
		print(string_arr[0])
	pass
	
func generate_headlines():
	var random = randi()%(headline_count-1)+0
	get_child(left_child_index).set_text(str(string_arr[random]))
	get_child(left_child_index).set_score(score_arr[random])
	random = randi()%(headline_count-1)+0
	get_child(right_child_index).set_text(string_arr[random])
	get_child(right_child_index).set_score(score_arr[random])
	
	while get_child(left_child_index).get_score() == get_child(right_child_index).get_score():
		random = randi()%(headline_count-1)+0
		get_child(right_child_index).set_text(str(string_arr[random]))
		get_child(right_child_index).set_score(score_arr[random])

	get_child(left_child_index).set_selected(false)
	get_child(right_child_index).set_selected(false)
	pass

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	add_child(headline_left)
	add_child(headline_right)
	left_child_index = headline_left.get_index()
	right_child_index = headline_right.get_index()
	headline_left.set_position(Vector2(get_viewport_rect().size.x / 16, get_viewport_rect().size.y / 2.75))
	headline_right.set_position(Vector2(get_viewport_rect().size.x / 1.30, get_viewport_rect().size.y / 2.75))
	load_headlines("res://data.data")
	generate_headlines()
	pass

func _process(delta):
	deltacount += delta
	if deltacount >= 0.1:
		if headline_left.get_selected():
			get_tree().get_root().find_node("Score", true, false).AddScore(headline_left.get_score())
			generate_headlines()
		elif headline_right.get_selected():
			get_tree().get_root().find_node("Score", true, false).AddScore(headline_right.get_score())
			generate_headlines()	
		deltacount = 0
	pass
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
