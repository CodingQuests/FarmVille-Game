extends Area2D

onready var timer = $Timer
onready var plant = $Sprite
var stage = 0

func _ready():
	timer.start()
	plant.frame = 1

func _process(delta):
	match stage:
		1:
			plant.frame = stage
		2:
			plant.frame = stage
		3:
			plant.frame = stage
		4:
			plant.frame = stage
		5:
			plant.frame = stage
		

func _on_Timer_timeout():
	if stage <= 5:
		stage += 1
