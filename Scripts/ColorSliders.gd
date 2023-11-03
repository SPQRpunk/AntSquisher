extends VBoxContainer

@export var ColorResource: Resource

@onready var RedSlider = $RedSlider
@onready var GreenSlider = $GreenSlider
@onready var BlueSlider = $BlueSlider

func _ready():
	RedSlider.value = ColorResource.RedMod
	GreenSlider.value = ColorResource.GreenMod
	BlueSlider.value = ColorResource.BlueMod

func _on_red_slider_value_changed(value):
	ColorResource.RedMod = RedSlider.value

func _on_green_slider_value_changed(value):
	ColorResource.GreenMod = GreenSlider.value

func _on_blue_slider_value_changed(value):
	ColorResource.BlueMod = BlueSlider.value
