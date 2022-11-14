extends Node2D

export var spawnDelay: float
var time: float

func _process(delta):
	time += delta
	
	if (time > spawnDelay):
		time = 0;
		var pipes = load('res://scenes/Pipes.tscn');
		var instance = pipes.instance()
		add_child(instance)
