extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (float) var rot_speed
export (float) var trans_speed
export (float) var dampening


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _integrate_forces(state):
	# Manually dampen movement
	linear_velocity = linear_velocity * dampening
	angular_velocity = angular_velocity * dampening
	
	if Input.is_action_pressed("translate_up"):
		linear_velocity.y = linear_velocity.y + trans_speed
	if Input.is_action_pressed("translate_down"):
		linear_velocity.y = linear_velocity.y - trans_speed
	if Input.is_action_pressed("translate_left"):
		linear_velocity.x = linear_velocity.x - trans_speed
	if Input.is_action_pressed("translate_right"):
		linear_velocity.x = linear_velocity.x + trans_speed
	if Input.is_action_pressed("rotate_clockwise"):
		angular_velocity.z = angular_velocity.z + rot_speed
	if Input.is_action_pressed("rotate_widdershins"):
		angular_velocity.z = angular_velocity.z - rot_speed

	state.set_linear_velocity(linear_velocity)
	state.set_angular_velocity(angular_velocity)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass
