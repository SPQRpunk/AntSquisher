extends Node2D
#
#@onready var MainMenuNode = $"Main Menu"
#@onready var OptionsMenuNode = $"Options Menu"
#@onready var PlayGameNode  = $"Play Game"
#
#const GAMESTATES = {
#	1: "Main Menu",
#	2: "Options Menu",
#	3: "Play Game"
#}
#
#var previous_state
#var current_state = GAMESTATES[1]
#
#func _process(_delta):
#	if current_state == GAMESTATES[1]:
#		MainMenuNode.visible = true
#	else:
#		MainMenuNode.visible = false
#	if current_state == GAMESTATES[2]:
#		OptionsMenuNode.visible = true
#	else:
#		OptionsMenuNode.visible = false
#	if current_state == GAMESTATES[3]:
#		PlayGameNode.visible = true
#	else:
#		PlayGameNode.visible = false
#
#func _on_play_button_area_input_event(_viewport, event, _shape_idx):
#	if event is InputEventMouseButton and event.pressed:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			previous_state = current_state
#			if current_state == GAMESTATES[1]:
#				current_state = GAMESTATES[3]
#				print("All clear: Play Button")
#			elif current_state != GAMESTATES[1]:
#				print("An Error has occurred. The Area2D Node for the Play button detected something it shouldn't have.")
#
#
#func _on_options_button_area_input_event(_viewport, event, _shape_idx):
#	if event is InputEventMouseButton and event.pressed:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			previous_state = current_state
#			if current_state == GAMESTATES[1]:
#				current_state = GAMESTATES[2]
#				print("All clear: Options Button")
#			elif current_state != GAMESTATES[1]:
#				print("An Error has occurred. The Area2D Node for the Options button detected something it shouldn't have.")
#
#
#func _on_return_button_area_input_event(_viewport, event, _shape_idx):
#	if event is InputEventMouseButton and event.pressed:
#		if event.button_index == MOUSE_BUTTON_LEFT:
#			current_state = previous_state

@export var MainMenuScene: PackedScene

func onready():
	get_tree().change_scene_to_packed(MainMenuScene)
