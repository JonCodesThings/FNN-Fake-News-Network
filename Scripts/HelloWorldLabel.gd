extends RichTextLabel

var count = 10

func _ready():
	# output "Hello World" text
   self.add_text("Hello World")

func _on_Timer_timeout():
	# negate time from the counter
	count -= 1
	self.clear()
	self.add_text(str("Hello World! Elapsed seconds = ",count))
	if(count == 0):
		get_tree().change_scene("res://Scenes/NewScene.tscn")