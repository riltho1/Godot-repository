extends Node

onready var game_start_time = OS.get_ticks_msec()
var current_spawn = null
export (float) var coins = 0

func start_level():
	current_spawn = null
	game_start_time = OS.get_ticks_msec()
	
func reset():
	current_spawn = null
	coins = 0
	get_tree().reload_current_scene()
	game_start_time = OS.get_ticks_msec()
	
	
func check_reset():
	if current_spawn == null:
		reset()
	else:
		return false

func set_spawn(spawn):
	current_spawn = spawn
	
func get_spawn():
	return current_spawn

func get_time():
	var current_time = OS.get_ticks_msec()-game_start_time
	var minutes = current_time/1000/60
	var seconds = current_time/1000%60
	var msec = current_time%1000/10
	if minutes < 10:
		minutes = "0"+str(minutes)
	if seconds < 10:
		seconds = "0"+str(seconds)
	if msec < 10:
		if msec == 0 :
			msec = "00"
		else:
			msec = "0" + str(msec)
	
	return str(minutes) + ":" + str(seconds) + ":" + str(msec)

func add_coin():
	coins = coins + 1

	if coins == 20:
		get_tree().change_scene("res://Scenes/Win Screen.tscn")
		coins = 0


