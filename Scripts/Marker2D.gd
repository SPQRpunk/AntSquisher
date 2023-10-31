extends Marker2D

@export var AntScene: PackedScene

var max_ants: int = 15

func _on_menu_spawn_timer_timeout():
	var curr_ants: int = self.get_child_count()
	print(str(curr_ants))
	if curr_ants < max_ants:
		var antinstance = AntScene.instantiate()
		self.add_child(antinstance)
#		antinstance.position = self.position
	else:
		pass
