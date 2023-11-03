extends Marker2D

@export var AntScene: PackedScene
@export var SpawnResource: Resource

func _on_menu_spawn_timer_timeout():
	var curr_ants: int = self.get_child_count()
	print(str(curr_ants))
	if curr_ants < SpawnResource.MaxSpawns:
		var antinstance = AntScene.instantiate()
		self.add_child(antinstance)
	else:
		pass
