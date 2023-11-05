extends VBoxContainer

@export var OptionsResource : Resource

func _ready():
	$SizeSlider.value = OptionsResource.AntSize
	$AmountSlider.value = OptionsResource.AntAmount

func _on_size_slider_value_changed(value):
	OptionsResource.AntSize = $SizeSlider.value

func _on_amount_slider_value_changed(value):
	OptionsResource.AntAmount = $AmountSlider.value
