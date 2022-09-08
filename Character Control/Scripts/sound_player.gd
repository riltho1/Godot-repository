extends Node

onready var music_player = AudioStreamPlayer.new()

var music_tracks = {
	"title_track":"res://sfx/music/Spiral - Matt J Hart (MP3).mp3",
	"main":"res://sfx/music/happywalking.wav",
}
var sound_effects = {
	"jump":"res://sfx/Player/jump.wav",
	"dead":"res://sfx/Player/hitHurt.wav",
}

var music_db = 1
var sound_db = 1

func change_music_volume(value):
	music_db = linear2db(value)
	music_player.volume_db = music_db

func change_sound_volume(value):
	sound_db = linear2db(value)


func _ready():
	music_player.stream = load(music_tracks["main"])
	add_child(music_player)
	music_player.play()

func chang_song(track):
	music_player.stream = load (music_tracks[track])
	music_player.play()

func play_sound_effects(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.volume_db = sound_db
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
