extends Node2D

@export var ColorResource: Resource

@onready var sprite = $SmushSprite

func _ready():
	var random_number = randi() % 36
	var texture = load("res://Assets/Default (256px)/splat%02d.png" % random_number)
	sprite.set_texture(texture)
	sprite.set_scale(Vector2(0.3, 0.3))

	modulate_texture()

func modulate_texture():
	var limit_r = 1 - remap(ColorResource.RedMod, 0, 255, 0, 1)
	var limit_g = 1 - remap(ColorResource.GreenMod, 0, 255, 0, 1)
	var limit_b = 1 - remap(ColorResource.BlueMod, 0, 255, 0, 1)
	
	var mod_r = randf_range(0, limit_r)
	var mod_g = randf_range(0, limit_g)
	var mod_b = randf_range(0, limit_b)
	
	sprite.modulate.r = mod_r
	sprite.modulate.g = mod_g
	sprite.modulate.b = mod_b

func _on_timer_timeout():
	self.queue_free()
