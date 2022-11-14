extends Node2D

var w: float

func _ready():
	w = $TopPipe.texture.get_width();
	position.x = 1014 + w/2; #TODO: set as global variable
	position.y = 300 + rand_range(-Globals.PIPES_SPAWN_RANGE, Globals.PIPES_SPAWN_RANGE);
	

func _process(delta):
	position.x -= Globals.PIPES_VELOCITY

	if (position.x < -w):
		queue_free();
