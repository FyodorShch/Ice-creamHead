extends Area2D

onready var dialog = $"../../Control/DialogBox"

func _on_raspizone_area_entered(area):
	if area is Using:
		$"../../Control".visible = true
