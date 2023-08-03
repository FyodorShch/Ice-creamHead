extends Button

var pathTo = "res://levels/HouseGogy.tscn"



func _on_Gogy_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseGogyDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Gogyhouse = true
