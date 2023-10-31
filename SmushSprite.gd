extends Node2D

@onready var sprite = $SmushSprite
@onready var background = get_parent().get_parent().get_node("TileMap")

const textures = [
	preload("res://Assets/Default (256px)/splat00.png"),
	preload("res://Assets/Default (256px)/splat01.png"),
	preload("res://Assets/Default (256px)/splat02.png"),
	preload("res://Assets/Default (256px)/splat03.png"),
	preload("res://Assets/Default (256px)/splat04.png"),
	preload("res://Assets/Default (256px)/splat05.png"),
	preload("res://Assets/Default (256px)/splat06.png"),
	preload("res://Assets/Default (256px)/splat07.png"),
	preload("res://Assets/Default (256px)/splat08.png"),
	preload("res://Assets/Default (256px)/splat09.png"),
	preload("res://Assets/Default (256px)/splat10.png"),
	preload("res://Assets/Default (256px)/splat11.png"),
	preload("res://Assets/Default (256px)/splat12.png"),
	preload("res://Assets/Default (256px)/splat13.png"),
	preload("res://Assets/Default (256px)/splat14.png"),
	preload("res://Assets/Default (256px)/splat15.png"),
	preload("res://Assets/Default (256px)/splat16.png"),
	preload("res://Assets/Default (256px)/splat17.png"),
	preload("res://Assets/Default (256px)/splat18.png"),
	preload("res://Assets/Default (256px)/splat19.png"),
	preload("res://Assets/Default (256px)/splat20.png"),
	preload("res://Assets/Default (256px)/splat21.png"),
	preload("res://Assets/Default (256px)/splat22.png"),
	preload("res://Assets/Default (256px)/splat23.png"),
	preload("res://Assets/Default (256px)/splat24.png"),
	preload("res://Assets/Default (256px)/splat25.png"),
	preload("res://Assets/Default (256px)/splat26.png"),
	preload("res://Assets/Default (256px)/splat27.png"),
	preload("res://Assets/Default (256px)/splat28.png"),
	preload("res://Assets/Default (256px)/splat29.png"),
	preload("res://Assets/Default (256px)/splat30.png"),
	preload("res://Assets/Default (256px)/splat31.png"),
	preload("res://Assets/Default (256px)/splat32.png"),
	preload("res://Assets/Default (256px)/splat33.png"),
	preload("res://Assets/Default (256px)/splat34.png"),
	preload("res://Assets/Default (256px)/splat35.png")
]

func _ready():
	sprite.set_texture(textures.pick_random())
	sprite.set_scale(Vector2(0.3, 0.3))
	modulate_texture()

func modulate_texture():
	var base_r = background.modulate.r
	var base_g = background.modulate.g
	var base_b = background.modulate.b
	
	var limit_r = 1 - base_r
	var limit_g = 1 - base_g
	var limit_b = 1 - base_b
	
	var mod_r = randf_range(0, limit_r)
	var mod_g = randf_range(0, limit_g)
	var mod_b = randf_range(0, limit_b)
#	var mod_r = randf()
#	var mod_g = randf()
#	var mod_b = randf()
	
	sprite.modulate.r = mod_r
	sprite.modulate.g = mod_g
	sprite.modulate.b = mod_b
	sprite.modulate.a = 1


func _on_timer_timeout():
	self.queue_free()
