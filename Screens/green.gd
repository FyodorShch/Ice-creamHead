extends Button

var pathTo = "res://levels/HouseBoby.tscn"

func _on_green_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseBobyDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Bobyhouse = true
