extends Area2D

const plant = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Plant.tscn")


var has_seed = false





func _on_Dirt_input_event(viewport, event, shape_idx):
	if !has_seed:
		if event.is_action("Spawn"):
			var plant1 = plant.instance()
			plant1.position = self.position
			get_node("../../Seeds").add_child(plant1)
			has_seed = true
