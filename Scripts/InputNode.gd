extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var snd_money = get_node("money")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func _process(delta):
	if Input.is_action_pressed("select_left"):
		if !get_tree().get_root().find_node("Headlines", true, false).get_child(0).get_selected():
			get_tree().get_root().find_node("Headlines", true, false).get_child(0).set_selected(true)
			get_tree().get_root().find_node("Score" , true, false).addHeadline(get_tree().get_root().find_node("Headlines", true, false).get_child(0).get_text())
			snd_money.play()
			Input.action_release("select_left")
		pass
	elif Input.is_action_pressed("select_right"):
		if !get_tree().get_root().find_node("Headlines", true, false).get_child(1).get_selected():
			get_tree().get_root().find_node("Headlines", true, false).get_child(1).set_selected(true)
			get_tree().get_root().find_node("Score" , true, false).addHeadline(get_tree().get_root().find_node("Headlines", true, false).get_child(1).get_text())
			snd_money.play()
			Input.action_release("select_right")
		pass
	else:
		pass
