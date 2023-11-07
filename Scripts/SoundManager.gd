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
		choose_track(music_pack)
	if $BackgroundMusicPlayer.volume_db != optionsresource.MusicVolume:
		$BackgroundMusicPlayer.volume_db = optionsresource.MusicVolume

func choose_track(music_pack):
	var bullshit = [ambiencepack, normalpack, retropack, retro2pack]
	$BackgroundMusicPlayer.stream = bullshit[music_pack]
	$BackgroundMusicPlayer.playing = true
