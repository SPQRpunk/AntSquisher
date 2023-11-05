extends Marker2D

@export var AntScene : PackedScene
@export var SpawnResource : Resource
@export var optionsresource : Resource

var spawn_time

func _ready():
	spawn_time = -1 * optionsresource.AntAmount + 3.5
	$MenuSpawnTimer.wait_time = spawn_time

func _physics_process(_delta):
	spawn_time = -1 * optionsresource.AntAmount + 3.5
	$MenuSpawnTimer.wait_time = spawn_time

func _on_menu_spawn_timer_timeout():
	var curr_ants: int = self.get_child_count()
	if curr_ants < SpawnResource.MaxSpawns:
		var antinstance = AntScene.instantiate()
		self.add_child(antinstance)
	else:
		pass
