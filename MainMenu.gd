extends Node2D

var plottemp = []

func _ready():
	#Utils.save_game()
	Utils.load_game()

	var size = Game.Plot.size()
	var i = 0
	while i < size:
		match (Game.Plot[i]["Harvested"]):
			true:
				pass
			false:
				plottemp += [Game.Plot[i]]
		i += 1
	Game.Plot = plottemp

func _on_Play_pressed():
	get_tree().change_scene("res://World.tscn")
