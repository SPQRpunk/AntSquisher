extends Node2D

@export var optionsresource : Resource
@export var ambiencepack : AudioStreamRandomizer
@export var normalpack : AudioStreamRandomizer
@export var retropack : AudioStreamRandomizer
@export var retro2pack : AudioStreamRandomizer

var music_pack : int
var current_folder : String
var current_track


func _physics_process(_delta):
	if music_pack != optionsresource.MusicPack:
		music_pack = optionsresource.MusicPack
		choose_track()
	if $BackgroundMusicPlayer.volume_db != optionsresource.MusicVolume:
		$BackgroundMusicPlayer.volume_db = optionsresource.MusicVolume

func choose_track():
	var current_pack
	if music_pack == 0:
		current_pack = ambiencepack
	elif music_pack == 1:
		current_pack = normalpack
	elif music_pack == 2:
		current_pack = retropack
	elif music_pack == 3: 
		current_pack = retro2pack
	$BackgroundMusicPlayer.stream = current_pack
	$BackgroundMusicPlayer.playing = true
