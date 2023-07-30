extends Control

onready var settings_menu = $SettingsMenu

func _on_SettingsButton_pressed():
	settings_menu.popup_centered()
