extends Position2D

func _draw():
	draw_rect(Rect2(Vector2(-32, -32), Vector2(64, 64)), Color.gray)
	#draw_circle(Vector2.ZERO, 32, Color.white)

func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
	modulate = Color.red

func deselect():
	modulate = Color.white
