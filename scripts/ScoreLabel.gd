extends Label

export var gameOverMode: bool

func _process(delta):
	if (gameOverMode):
		text = 'Score: ' + str(Globals.score) + '\nHight Score: ' + str(Globals.hightScore);
	else:
		text = 'Score: ' + str(get_node('../Player').score) + '/' + str(Globals.hightScore);
