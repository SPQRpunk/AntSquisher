extends Sprite2D

@export var AntScene: PackedScene


func _on_timer_timeout():
	var Antinstance = AntScene.instantiate()
	get_parent().add_child(Antinstance)
	Antinstance.position = self.position

