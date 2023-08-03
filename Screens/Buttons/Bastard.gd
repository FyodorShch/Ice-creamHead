extends Button

var pathTo = "res://levels/HouseBastard.tscn"



func _on_Bastard_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseBastardDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Bastardhouse = true
