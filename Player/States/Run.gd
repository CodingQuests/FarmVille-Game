extends State

class_name RunState

func get_input():
	if Input.is_action_just_released("ui_left"):
		change_state.call_func("idle")
	if Input.is_action_just_released("ui_right"):
		change_state.call_func("idle")
	if Input.is_action_just_released("ui_down"):
		change_state.call_func("idle")
	if Input.is_action_just_released("ui_up"):
		change_state.call_func("idle")
	
func _physics_process(delta):
	get_input()


func move_left():
	persistent_state.velocity.x -= 1
	animation.play("Walk Left")
func move_right():
	persistent_state.velocity.x += 1
	animation.play("Walk Right")
func move_down():
	persistent_state.velocity.y += 1
	animation.play("Walk Down")
func move_up():
	persistent_state.velocity.y -= 1
	animation.play("Walk Up")

