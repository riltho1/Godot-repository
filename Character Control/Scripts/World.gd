extends Node2D


func _ready():
	GameStats.start_level()

func _process(delta):
	pass
	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
	$CanvasLayer/Control/Timer.text = GameStats.get_time()
	

func _on_Area2D_body_entered(body):
	pass

