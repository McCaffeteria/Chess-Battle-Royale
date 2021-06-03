extends Node

class_name BoardCell

var contains

func _init(contents):
	contains = contents

func changeContents(contents):
	contains = contents
