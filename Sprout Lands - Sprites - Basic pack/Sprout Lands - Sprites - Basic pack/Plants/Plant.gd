extends Node2D

onready var timer = $Timer
onready var plant = $Sprite
var stage = 0

func _ready():
	timer.start()
	plant.frame = 1

func _process(delta):
	match stage:
		1:
			plant.frame = 1
		2:
			plant.frame = 2
		3:
			plant.frame = 3
		4:
			plant.frame = 4
		5:
			plant.frame = 5
		

func _on_Timer_timeout():
	if stage <= 5:
		stage += 1
