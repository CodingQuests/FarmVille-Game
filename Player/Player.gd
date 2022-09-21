extends KinematicBody2D

class_name PersistentState

var state
var state_manager

var velocity = Vector2()
var speed = 20

func _ready():
	state_manager = StateManager.new()
	change_state("idle")

func get_input():
	Utils.save_game()
	velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		move_left()
	elif Input.is_action_pressed("ui_right"):
		move_right()
	elif Input.is_action_pressed("ui_up"):
		move_up()
	elif Input.is_action_pressed("ui_down"):
		move_down()
	velocity = velocity.normalized()*speed
	
func _process(delta):
	get_input()
	velocity = move_and_slide(velocity)


func move_left():
	state.move_left()
	
func move_right():
	state.move_right()
	
func move_up():
	state.move_up()
	
func move_down():
	state.move_down()

func change_state(new_state_name):
	if state != null:
		state.queue_free()
	state = state_manager.get_state(new_state_name).new() #Set State to new_state_name
	state.setup(funcref(self, "change_state"), $AnimationPlayer, self)
	state.name = str(new_state_name)
	add_child(state)
