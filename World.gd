extends Node2D

onready var darkness = get_node("Ambient")
onready var light = get_node("Player/Player/Light2D")

var color_scheme  = {
	0: Color8(40, 40, 40),
	1: Color8(60, 60, 60),
	2: Color8(80, 80, 80),
	3: Color8(100, 100, 100),
	4: Color8(120, 120, 120),
	5: Color8(140, 140, 140),
	6: Color8(160, 160, 160),
	7: Color8(180, 180, 180),
	8: Color8(200, 200, 200),
	9: Color8(220, 220, 220),
	10: Color8(240, 240, 240),
}
var light_schemes = {
	0: 0.8,
	1: 0.7,
	2: 0.6,
	3: 0.5,
	4: 0.4,
	5: 0.3,
	6: 0.2,
	7: 0.1,
	8: 0,
}

func _process(delta):
	var date = OS.get_datetime()
	
	if (date["hour"] >= 0 && date["hour"] < 5):
		darkness.color = color_scheme[0]
		light.energy = light_schemes[0]
	elif (date["hour"] >= 11 && date["hour"] < 15):
		darkness.color = color_scheme[4]
		light.energy = light_schemes[4]
		
	elif (date["hour"] >= 15 && date["hour"] < 20):
		darkness.color = color_scheme[4]
		light.energy = light_schemes[0]
	elif (date["hour"] >= 20 && date["hour"] < 24):
		darkness = color_scheme[2]
		light.energy = light_schemes[2]
	
