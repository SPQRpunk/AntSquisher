extends Node2D

@export var ColorResource : Resource
@export var optionsresource : Resource

@onready var sprite = $SmushSprite

func _ready():
	var random_number = randi() % 36
	var texture = load("res://Assets/Default (256px)/splat%02d.png" % random_number)
	sprite.set_texture(texture)
	self.scale = Vector2(optionsresource.AntSize * 0.2, optionsresource.AntSize * 0.2)

	modulate_texture()

func modulate_texture():
	var limit_r = 1 - remap(ColorResource.RedMod, 0, 255, 0, 1)
	var limit_g = 1 - remap(ColorResource.GreenMod, 0, 255, 0, 1)
	var limit_b = 1 - remap(ColorResource.BlueMod, 0, 255, 0, 1)
	
	var mod_r = randf_range(0.2, limit_r)
	var mod_g = randf_range(0.2, limit_g)
	var mod_b = randf_range(0.2, limit_b)
	
	sprite.modulate.r = mod_r
	sprite.modulate.g = mod_g
	sprite.modulate.b = mod_b

func _on_timer_timeout():
	self.queue_free()
