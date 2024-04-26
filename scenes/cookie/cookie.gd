extends Area2D

var floating_click_value_preload = load("res://components/floating_click_value/floating_click_value.tscn")

var click_value: float = 1.0

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			_process_click()
			$AnimationPlayer.play("click")
			$GPUParticles2D.restart()
			var floating_click_value = floating_click_value_preload.instantiate()
			floating_click_value.value = click_value
			add_child(floating_click_value)
		else:
			$AnimationPlayer.play_backwards("click")

func _process_click():
	get_parent().add_score.emit(click_value)
