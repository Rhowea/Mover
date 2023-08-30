extends Node2D
var prey = preload("res://Prey.tscn")
onready var predator = get_node("Predator")

func _input(event):
	if event.is_action("ui_up"):
		var new_prey = prey.instance()
		add_child(new_prey)
		add_to_group("PreyInstances")
		predator.connect("body_entered", predator, "eat_prey")
