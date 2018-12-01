extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var rotation_speed = 0
var rotation_vector

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	rotation_speed = randf()
	rotation_vector = Vector3(rand_range(-1, 1), rand_range(-1, 1), rand_range(-1, 1))
	
	print(rotation_speed)
	print(rotation_vector)
	
	set_axis_velocity(Vector3(0, 0, 10))
	
	

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	
	rotate_x(rotation_vector.x * rotation_speed * delta)
	rotate_y(rotation_vector.y * rotation_speed * delta)
	rotate_z(rotation_vector.z * rotation_speed * delta)

	

	
