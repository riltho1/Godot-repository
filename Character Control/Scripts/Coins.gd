extends Area2D



func _on_Coin_body_entered(body):
	$AnimationPlayer.play("PickUp")
	GameStats.add_coin()
	



func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
