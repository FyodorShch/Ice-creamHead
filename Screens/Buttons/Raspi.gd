extends Button

var pathTo = "res://levels/houseRaspi.tscn"



func _on_Raspi_pressed():
	if Global.Allhouse == true:
		get_tree().change_scene("res://levels/houseRaspiDeath.tscn")
	else:
		get_tree().change_scene(pathTo)
		Global.Raspihouse = true
