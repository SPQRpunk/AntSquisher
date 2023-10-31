extends TileMap

@onready var RedSlider = $"../Options Menu/Container/VBoxContainer/RedSlider"
@onready var GreenSlider = $"../Options Menu/Container/VBoxContainer/GreenSlider"
@onready var BlueSlider = $"../Options Menu/Container/VBoxContainer/BlueSlider"

func _ready():
	self.modulate.r = remap(150, 0, 255, 0, 1)
	self.modulate.g = remap(250, 0, 255, 0, 1)
	self.modulate.b = remap(100, 0, 255, 0, 1)
	
	RedSlider.value = 150
	GreenSlider.value = 250
	BlueSlider.value = 100

func _on_red_slider_value_changed(value):
	self.modulate.r = remap(value, 0, 255, 0, 1)

func _on_green_slider_value_changed(value):
	self.modulate.g = remap(value, 0, 255, 0, 1)

func _on_blue_slider_value_changed(value):
	self.modulate.b = remap(value, 0, 255, 0, 1)
