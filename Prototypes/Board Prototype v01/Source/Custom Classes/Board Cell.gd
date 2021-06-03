extends Node

class_name BoardCell

var contains = nill

func _init(contents):
	contains = contents

func changeContents(contents):
	contains = contents
