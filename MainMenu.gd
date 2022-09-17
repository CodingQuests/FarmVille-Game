extends Node2D



func _ready():
	Utils.save_game()
	Utils.load_game()
	
func _on_Play_pressed():
	get_tree().change_scene("res://World.tscn")
