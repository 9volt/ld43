extends CollisionShape

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (float) var thrust = 0.1
export (String) var key = "a"

enum DirectionEnum {UP, DOWN, LEFT, RIGHT}
export (DirectionEnum) var direction = UP

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	match direction:
		UP:
			var sprite = load("res://letters/W.png")
			$Sprite3D.texture = sprite
		DOWN:
			var sprite = load("res://letters/S.png")
			$Sprite3D.texture = sprite
		LEFT:
			var sprite = load("res://letters/A.png")
			$Sprite3D.texture = sprite
		RIGHT:
			var sprite = load("res://letters/D.png")
			$Sprite3D.texture = sprite

func _process(delta):
	var ship = get_tree().get_root().find_node("Ship", true, false)
	var our_location = get_transform().origin
	var ship_basis = ship.get_transform().basis
	var our_basis = get_transform().basis
	
	if Input.is_action_pressed("ui_left"):
		ship.apply_impulse(Vector3(0, 0, 0), ship_basis.x * -thrust)
	if Input.is_action_pressed("ui_right"):
		ship.apply_impulse(Vector3(0, 0, 0), ship_basis.x * thrust)
	if Input.is_action_pressed("ui_up"):
		ship.apply_impulse(Vector3(0, 0, 0), ship_basis.y * thrust)
	if Input.is_action_pressed("ui_down"):
		ship.apply_impulse(Vector3(0, 0, 0), ship_basis.y * -thrust)
	
	$RayCast.cast_to = Vector3(0, -1, 0) * 1000
	

	match direction:
		UP:
			if Input.is_action_pressed("translate_up"):
				ship.apply_impulse(our_location, our_basis.y * thrust)
		DOWN:
			if Input.is_action_pressed("translate_down"):
				ship.apply_impulse(our_location, our_basis.y * thrust)
		LEFT:
			if Input.is_action_pressed("translate_left"):
				ship.apply_impulse(our_location, our_basis.y * thrust)
		RIGHT:
			if Input.is_action_pressed("translate_right"):
				ship.apply_impulse(our_location, our_basis.y * thrust)