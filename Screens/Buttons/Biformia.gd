extends Button

var pathTo = "res://levels/HouseBiformi.tscn"



func _on_Biformia_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseBiformiDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Biformiahouse = true
