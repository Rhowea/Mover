extends "res://Mover.gd"

var prey_eaten = 0

#Defining these for later use in scaling
onready var sprite = get_node("Sprite")
onready var collisionShape = get_node("CollisionShape2D")

func _ready():
	do_the_move()
	print("_ready() has been called")

func eat_prey(prey):
	if prey is Prey:
		#Since RigidBody2Ds don't have scale (their size is being handled 
		#by the physics engine, and can't be changed at runtime)
		#we have to manually scale the children of the parent, 
		#which functionally achieves the same thing
		sprite.scale += Vector2(0.1, 0.1)
		collisionShape.scale += Vector2(0.1, 0.1)
		prey.queue_free()
