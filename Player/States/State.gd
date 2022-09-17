extends Node2D

class_name State

var change_state
var animation
var persistent_state
var velocity = 0

func _physics_process(delta):
	persistent_state.move_and_slide(persistent_state.velocity, Vector2.UP)

func setup(change_state, animation, persistent_state):
	self.change_state = change_state
	self.animation = animation
	self.persistent_state = persistent_state
	
