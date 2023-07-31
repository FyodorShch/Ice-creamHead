extends Button

var pause = false



func _on_RetryButton_button_up():
	get_tree().paused = false
	get_tree().reload_current_scene()
