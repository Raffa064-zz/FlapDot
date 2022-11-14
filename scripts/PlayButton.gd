extends Button

export var animationSpeed: float;
var time: float;

func _process(delta):
	var angle = 8;
	rect_rotation = sin(time) * angle;
	time += delta * animationSpeed

func onButtonPressed():
	get_tree().change_scene("res://scenes/Game.tscn")
