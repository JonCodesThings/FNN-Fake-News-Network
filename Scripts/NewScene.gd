extends RichTextLabel

var count = 5

func _ready():
	# output "Hello World" text
	self.add_text(str("GAME OVER!", count))
		
		
func _on_Timer_timeout():
	# negate time from the counter
	count -= 1
	self.clear()
	self.add_text(str("GAME OVER! = ",count))
	if(count == 0):
		get_tree().quit() # exits the application
