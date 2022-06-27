extends Node2D

var next_color = Color.gold
onready var background = get_node("Background")

func change_color(new_color):
	background.color = new_color
	
func _ready():
	change_color(next_color)
