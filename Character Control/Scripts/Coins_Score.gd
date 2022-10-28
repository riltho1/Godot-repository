extends Label

func _process(delta):
	self.text = str(GameStats.coins)


func _on_Coin_area_entered(area):
	GameStats.coins += 1
