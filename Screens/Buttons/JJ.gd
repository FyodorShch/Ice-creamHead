extends Button

var pathTo = "res://levels/HouseJJ.tscn"



func _on_JJ_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseJJDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.JJhouse = true
