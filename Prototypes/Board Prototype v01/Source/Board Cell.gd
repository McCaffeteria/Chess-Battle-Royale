extends Position2D

func _draw():
	var color : Color
	if is_in_group("Dark"):
		color = Color("4B7399")
	else:
		if is_in_group("Light"):
			color = Color("EAE9D2")
	draw_rect(Rect2(Vector2(-75, -75), Vector2(150, 150)), color)

func highlight():
	modulate = Color.red

func unhighlight():
	modulate = Color.white

func broadcastClick():
	pass
