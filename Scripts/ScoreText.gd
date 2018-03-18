extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var m_score = 0

func _ready():
	get_score()
	print(m_score)
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func get_score():
	m_score = get_tree().find_node("Score", true, false).get_score()
	self.text = "Your score: " + m_score

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
