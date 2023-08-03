extends Node
onready var Raspihouse = false
onready var Bastardhouse = false
onready var JJhouse = false
onready var Gogyhouse = false
onready var Beanhouse = false
onready var Biformiahouse = false
onready var Bobyhouse = false

onready var Allhouse = false

func _process(delta):
	if Raspihouse == true and Bastardhouse == true and JJhouse == true and Gogyhouse == true and Beanhouse == true and Biformiahouse == true and Bobyhouse == true:
		Allhouse = true
