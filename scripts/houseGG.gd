extends Node2D

onready var value = false

func map(value):
	if Input.is_action_pressed("map") and value == false:
		$CanvasLayer/Map/Popup.popup_centered()
	elif Input.is_action_pressed("map") and value == true:
		$CanvasLayer/Map/Popup.popup_centered()
