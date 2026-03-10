extends Node2D
const ANGRY = preload("uid://dhigvgfgkbhdb")
const HAPPY = preload("uid://cyvxixhrse8g2")
const SAD = preload("uid://cq4sdldk1nvyk")

const BUTTON_1 = preload("uid://r8rikej5ulmb")
const BUTTON_2 = preload("uid://bubk0eyy1yb6w")
const BUTTON_3 = preload("uid://tho3a06nivjr")

@onready var video_stream_player: VideoStreamPlayer = $CanvasLayer/VideoStreamPlayer

@onready var button: Button = $CanvasLayer/Button

var state: int = 0

func _on_button_pressed() -> void:
	match state:
		0:
			video_stream_player.stream = HAPPY
			video_stream_player.play()
			button.icon = BUTTON_1
			state = 1
		1:
			video_stream_player.stream = SAD
			video_stream_player.play()
			button.icon = BUTTON_2
			state = 2
		2:
			video_stream_player.stream = ANGRY
			video_stream_player.play()
			button.icon = BUTTON_3
			state = 0
