extends Area2D

@export var SceneResource: Resource

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			SceneResource.next_scene = SceneResource.previous_scene
