extends Area2D

var active = false


		
func _on_raspizone_body_entered(body):
	if body is player:
		active = true

		
		
func _input(event):
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed("use") and active:
			get_tree().paused = true
			var dialog = Dialogic.start('first')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end', self, 'unpause')
			add_child(dialog)

func unpause(timeline_lane):
	get_tree().paused = false

func _on_raspizone_body_exited(body):
	if body is player:
		active = false
