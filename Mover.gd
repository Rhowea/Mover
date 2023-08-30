extends RigidBody2D

var direction_generator = RandomNumberGenerator.new()
var initial_direction
var speed = Vector2(0, -100)

func do_the_move():
	direction_generator.randomize()
	initial_direction = direction_generator.randf_range(-PI, PI)
	linear_velocity = speed.rotated(initial_direction) * 3
	print("do_the_move() has been called ", linear_velocity)
