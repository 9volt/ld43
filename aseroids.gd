extends Spatial

var scalef = 20

func _ready():
	spawn_asteroid()


func _process(delta):
	if randf() > 0.99:
		pass
		spawn_asteroid()


func spawn_asteroid():
	var scene = load("res://asteroid.tscn")
	var scene_instance = scene.instance()
	scene_instance.translation.y = (randf() * scalef) - (scalef * 0.5)
	scene_instance.translation.x = (randf() * scalef) - (scalef * 0.5)
	scene_instance.translation.z = -10 # put it a good ways away
	scene_instance.set_name("test_scene")
	add_child(scene_instance)