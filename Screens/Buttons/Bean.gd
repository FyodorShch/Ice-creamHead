extends Button

var pathTo = "res://levels/HouseBean.tscn"



func _on_Bean_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/HouseBeanDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Beanhouse = true
