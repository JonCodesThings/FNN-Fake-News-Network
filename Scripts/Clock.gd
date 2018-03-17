extends RichTextLabel

var count = 10

func _ready():
	# output "Hello World" text
	self.append_bbcode("[center]" + str(count) +"[/center]")
	pass
		
func _on_Timer_timeout():
	# negate time from the counter
	count -= 1
	if(count <= 0):
		self.clear()
		self.append_bbcode("[center]TIME'S UP![/center]")
	else:
		self.clear()
		self.append_bbcode("[center]" + str(count) +"[/center]")
		#get_tree().quit() # exits the application
