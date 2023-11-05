extends VBoxContainer

@export var optionsresource : Resource

func _ready():
	$HSlider.value = optionsresource.MusicVolume
	$OptionButton.select(optionsresource.MusicPack)

func _on_option_button_item_selected(index):
	optionsresource.MusicPack = index

func _on_h_slider_value_changed(value):
	optionsresource.MusicVolume = value
