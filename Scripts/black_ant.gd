extends CharacterBody2D

@export var smushscene : PackedScene
@export var optionsresource : Resource

@onready var timer = $BlackAntTimer
@onready var sprite = $AnimatedSprite2D
@onready var crushtimer = $CrushTimer

var dir_x: int
var dir_y: int
var l_side: int = 16
var r_side: int = 784
var top: int = 16
var bottom: int = 464
var speed: int = 30

var dir_angle: float = 0.0
var turned: bool = true

var crushed: bool = false

func ready():
	sprite.is_playing()

func _physics_process(_delta):
	self.scale = Vector2(optionsresource.AntSize, optionsresource.AntSize)
	if dir_x > 0 && global_position.x > r_side:
		dir_x = 0
	if dir_x < 0 && global_position.x < l_side:
		dir_x = 0
	if dir_y < 0 && global_position.y < top:
		dir_y = 0
	if dir_y > 0 && global_position.y > bottom:
		dir_y = 0
	velocity.x = dir_x * speed
	velocity.y = dir_y * speed
	velocity.normalized()
	if turned == true:
		set_angle()
	if crushed == false:
		move_and_slide()
		self.set_rotation(dir_angle)

func set_angle():
	dir_angle = deg_to_rad(90 + rad_to_deg(velocity.angle()))
	turned = false

func _on_black_ant_timer_timeout():
	randomize()
	dir_x = randi() % 3 - 1
	dir_y = randi() % 3 - 1
	if dir_x > 1:
		dir_x = 1
	if dir_x < -1:
		dir_x = -1
	if dir_y > 1:
		dir_y = 1
	if dir_y < -1:
		dir_y = -1
	turned = true
	restart_timer()

func restart_timer():
	var new_time = randi() % 3 + 1
	timer.wait_time = new_time
	timer.start()


func _on_black_ant_area_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if crushed == false:
				var smushinstance = smushscene.instantiate()
				self.add_sibling(smushinstance)
				smushinstance.position = self.position
				self.z_index = 5
				smushinstance.z_index = 4
				crushed = true
				sprite.set_animation("ant_crushed")
				crushtimer.start()
			else:
				pass

func _on_crush_timer_timeout():
	self.queue_free()
