extends ImmediateGeometry

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var A = Vector3(0, 0, -4.62321)
var B = Vector3(1, 1, -4.62321)

func set(A, B):
	self.A = A
	self.B = B

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	clear()
	begin(1, null) #1 = is an enum for draw line, null is for text

	set_color(Color(255, 0, 0))
	add_vertex(A)	
	add_vertex(B)

	end()
