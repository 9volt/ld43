extends CollisionShape

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (float) var thrust = 0.1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	var basis = get_transform().basis

	var ship = get_tree().get_root().find_node("Ship", true, false)

	basis = ship.get_transform().basis
	
	if Input.is_action_pressed("ui_left"):
		ship.apply_impulse(Vector3(0, 0, 0), basis.x * -thrust)
	if Input.is_action_pressed("ui_right"):
		ship.apply_impulse(Vector3(0, 0, 0), basis.x * thrust)
	if Input.is_action_pressed("ui_up"):
		ship.apply_impulse(Vector3(0, 0, 0), basis.y * thrust)
	if Input.is_action_pressed("ui_down"):
		ship.apply_impulse(Vector3(0, 0, 0), basis.y * -thrust)