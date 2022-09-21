extends YSort


const Corn = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Corn.tscn")
const Tomatoe = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Tomato.tscn")


func _ready():
	var Curr_plot = Game.Plot
	print(Curr_plot.size())
	if Curr_plot.size() > 0:
		for i in Curr_plot.size():
			match (Curr_plot[i-1]["Seed"]):
				"Corn":
					Game.Plot.pop_at(i)
					var plant1 = Corn.instance()
					plant1.PlantNum = i
					plant1.stage = int(Curr_plot[i-1]["Stage"])
					plant1.time = (float(round(Curr_plot[i-1]["TimeLeft"])))
					var dirt_name = "Dirt" + str(i)
					if has_node(dirt_name):
						get_child(i).add_child(plant1)
						get_child(i).has_seed = true
						Utils.save_game()
				"Tomato":
					Game.Plot.pop_at(i)
					var plant1 = Tomatoe.instance()
					plant1.PlantNum = i
					plant1.stage = int(Curr_plot[i-1]["Stage"])
					plant1.time = (float(round(Curr_plot[i-1]["TimeLeft"])))
					var dirt_name = "Dirt" + str(i)
					if has_node(dirt_name):
						get_child(i).add_child(plant1)
						get_child(i).has_seed = true
					Utils.save_game()
