extends Area2D

const Corn = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Corn.tscn")
const Tomatoe = preload("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Plants/Tomato.tscn")


var has_seed = false
var canPlant = false


func get_input():
	if Input.is_action_pressed("Spawn"):
		if canPlant == true:
			spawn()
func _physics_process(delta):
	get_input()

func spawn():
	if !has_seed:
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


func _on_Dirt_body_entered(body):
	if body.name == "Player":
		Utils.notif("Press Z to Plant")
		canPlant = true

func _on_Dirt_body_exited(body):
	if body.name == "Player":
		canPlant = false
