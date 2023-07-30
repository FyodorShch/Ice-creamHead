extends Area2D



func _on_raspizone_area_entered(area):
	if area is Using:
		$"../../Control".visible = true
