extends Popup

onready var music_volume_slider = $TabContainer/Sound/MusicVolSlider

func _on_MusicVolSlider_value_changed(value):
	GlobalSettings.update_master_vol(0, value)
