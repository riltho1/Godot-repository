extends Control


func _ready():
	pass


func _on_Options_pressed():
	$AnimationPlayer.play("MoveToOptions")
	


func _on_Back_pressed():
	$AnimationPlayer.play("MoveToMain")
