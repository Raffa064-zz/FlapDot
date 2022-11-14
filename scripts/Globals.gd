extends Node

var GRAVITY = 30;
var PLAYER_JUMP_HEIGHT = 8;
var PIPES_VELOCITY = 5;
var PIPES_SPAWN_RANGE = 120;

var score: int
var hightScore: int

func set_score(newScore):
	score = newScore
	if (newScore > hightScore):
		hightScore = newScore
