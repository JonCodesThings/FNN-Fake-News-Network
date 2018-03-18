extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var m_time = 0
var m_timer = 0
var m_current_index = 0
var m_headlines = PoolStringArray()

func _ready():
	m_current_index = 0
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	

func _process(delta):
	m_timer += delta
	if m_timer >= m_time:
		m_timer = 0
		m_current_index += 1
		if m_current_index <= m_headlines.size():
			self.text = m_headlines[m_current_index]
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
