extends Button



func _on_QuitFromPauseButton_button_up():
	get_tree().paused = false
	get_tree().quit()
