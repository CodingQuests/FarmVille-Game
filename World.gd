extends Node2D

const plant = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Plant.tscn")



func _input(event):
	if event.is_action("Spawn"):
		var plant1 = plant.instance()
		plant1.position = get_global_mouse_position()
		get_node("Plants").add_child(plant1)
