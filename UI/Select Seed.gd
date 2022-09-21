extends Node2D




func _ready():
	hide_all()
func _input(event):
	if event.is_action_pressed("Select_Up"):
		print(Game.Selected)
		if Game.Selected < get_child_count() - 2:
			Game.Selected += 1
	if event.is_action_pressed("Select_Down"):
		if Game.Selected >= 1:
			Game.Selected -= 1
	hide_all()
	
	
func _process(delta):
	get_child(Game.Selected).get_child(0).show()
	
func hide_all():
	for i in get_child_count()-1:
		get_child(i).get_child(0).hide()
