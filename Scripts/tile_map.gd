extends TileMap

@export var ColorResource: Resource

func _ready():
	pass

func _physics_process(_delta):
	self.modulate.r = remap(ColorResource.RedMod, 0, 255, 0, 1)
	self.modulate.g = remap(ColorResource.GreenMod, 0, 255, 0, 1)
	self.modulate.b = remap(ColorResource.BlueMod, 0, 255, 0, 1)
