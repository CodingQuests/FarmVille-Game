extends State

class_name IdleState


func move_left():
	change_state.call_func("run")
	
func move_right():
	change_state.call_func("run")
	
func move_up():
	change_state.call_func("run")
	
func move_down():
	change_state.call_func("run")
	
