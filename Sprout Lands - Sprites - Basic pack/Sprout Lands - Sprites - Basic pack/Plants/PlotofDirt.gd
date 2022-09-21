extends Area2D

const Corn = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Corn.tscn")
const Tomatoe = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Tomato.tscn")


var has_seed = false





func _on_Dirt_input_event(viewport, event, shape_idx):
	if !has_seed:
		if event.is_action("Spawn"):
			match Game.Selected:
				0:
					var plant1 = Corn.instance()
					#plant1.position = self.position
					self.add_child(plant1)
					has_seed = true
				1:
					var plant1 = Tomatoe.instance()
					#plant1.position = self.position
					self.add_child(plant1)
					has_seed = true
