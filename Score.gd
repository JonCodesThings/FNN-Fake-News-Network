extends Node

## Holds the total score of the game
##	totalScore: float
var struct_totalScore = {
	totalScore = 0
}

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

## Adds amount to the totalScore of struct_totalScore
func AddScore(amount):
	struct_totalScore.totalScore += amount
	pass

## Loads the total score from file
func LoadFromFile(path):
	var file = File.new()
	
	if file.file_exists(path):
		#open and place the contents into a varable
		file.open(path, file.READ)
		var content = file.get_float()
		file.close()
		
		#set the score to the content
		struct_totalScore.totalScore = content
	else:
		#print error
		if OS.is_debug_build(): 
			print("Total Score file not found at " + str(path))
	pass

## Saves the total score to file
func SaveToFile(path):
	var file = File.new()	
	file.open(path, file.WRITE_READ)
	file.store_float(struct_totalScore.totalScore)
	file.close()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

##all functions below can be called without arguemtnts

func TestAddScore():
	struct_totalScore.totalScore += 1
	get_node("Control/Current Score").text = str(struct_totalScore.totalScore)
	pass

func TestSaveScore():
	SaveToFile("user://savegame.save")
	get_node("Control/Current Score").text = str(struct_totalScore.totalScore) + " Saved!"
	pass # replace with function body


func TestLoadFromFile():
	LoadFromFile("user://savegame.save")
	get_node("Control/Current Score").text = str(struct_totalScore.totalScore) + " Loaded!"
	pass # replace with function body
