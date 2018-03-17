extends RichTextLabel

var count = 10

func _ready():
	# output "Hello World" text
	
	self.add_text(str(count))
	#self.append_bbcode("[center]" + str(count) +"[/center]")
	pass
		
func _on_Timer_timeout():
	# negate time from the counter
	count -= 1
	if(count <= 0):
		self.clear()
		self.add_text("TIME'S UP!")
		#self.append_bbcode("[center]TIME'S UP![/center]")
	else:
		self.clear()
		self.set_position(Vector2((get_viewport_rect().size.x / 2) - (get_viewport_rect().size.x / 50), get_viewport_rect().size.y/ 10))
		self.add_text(str(count))
		#self.append_bbcode("[center]" + str(count) +"[/center]")
		#get_tree().quit() # exits the application
