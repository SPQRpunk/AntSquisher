extends Node2D

@export var SceneVariables: Resource

func _ready():
	SceneVariables.next_scene = "res://Scenes/main_menu.tscn"

func _physics_process(_delta):
	if SceneVariables.next_scene != SceneVariables.current_scene:
		change_scene(SceneVariables.next_scene)

func change_scene(nextscnpath: String):
	SceneVariables.next_scene = nextscnpath
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(load(nextscnpath).instantiate())
	SceneVariables.current_scene = SceneVariables.next_scene
