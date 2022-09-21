extends GridContainer


onready var SlotButtons = [
	get_node("Slot0"),
	get_node("Slot1"),
	get_node("Slot2"),
	get_node("Slot3"),
	get_node("Slot4"),
	get_node("Slot5"),
]

func setInventory():
	for i in Game.Harvests.size():
		if SlotButtons.size() >= Game.Harvests.size():
			if "Corn" in Game.Harvests[i]["Name"]:
				SlotButtons[i].has_item = true
				SlotButtons[i].itemIcon = load("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Objects/Corn.png")
				SlotButtons[i].itemName = Game.Harvests[i]["Name"]
				SlotButtons[i].itemCount = Game.Harvests[i]["Count"]
			if "Tomato" in Game.Harvests[i]["Name"]:
				SlotButtons[i].has_item = true
				SlotButtons[i].itemIcon = load("res://Sprout Lands - Sprites - Basic pack/Sprout Lands - Sprites - Basic pack/Objects/Tomato.png")
				SlotButtons[i].itemName = Game.Harvests[i]["Name"]
				SlotButtons[i].itemCount = Game.Harvests[i]["Count"]
			
