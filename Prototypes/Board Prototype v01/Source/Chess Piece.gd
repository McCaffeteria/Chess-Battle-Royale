extends Node2D

var selected = false
var rest_point
var rest_nodes = []
var coordinate : Vector2

func _ready():
	rest_nodes = get_tree().get_nodes_in_group("zone")
	rest_point = global_position
		#This is a hack to keep pieces from all zooming to the same spot on frame 1.
		#I'd much preffer to run setRestPoint() to find the closest rest point for each piece,
		#but for some reason running that method from _ready() just does nothing and it
		#crashes because rest_point is a nill. Oh well.

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true
		
func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
		scale = lerp(scale, Vector2(1.2, 1.2), 10 * delta)
	else:
		global_position = lerp(global_position, rest_point, 10 * delta)
		scale = lerp(scale, Vector2(1, 1), 10 * delta)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false
			setRestPoint()

func setRestPoint():
	var shortest_dist = 75
	for child in rest_nodes:
		var distance = global_position.distance_to(child.global_position)
		if distance < shortest_dist:
			rest_point = child.global_position
			shortest_dist = distance

func showValidMoves():
	
	pass

func defineValidMoves():
	pass
