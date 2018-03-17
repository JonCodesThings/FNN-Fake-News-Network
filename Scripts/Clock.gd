extends RichTextLabel

var count = 10

func _ready():
	# output "Hello World" text
	self.append_bbcode("[center]" + str(count) +"[/center]")
		
		
func _on_Timer_timeout():
	# negate time from the counter
	count -= 1
	self.clear()
	self.append_bbcode("[center]" + str(count) +"[/center]")
	if(count == 0):
		self.append_bbcode("[center]TIME'S UP![/center]")
		get_tree().quit() # exits the application
