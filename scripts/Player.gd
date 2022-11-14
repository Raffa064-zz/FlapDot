extends Node2D

var score: int
var vertVel: float;
var MIN_ANGLE = -1.01;
var MAX_ANGLE = 1.01;
var SMOOTH_ANGLE = 0.2;

func _process(delta):
	vertVel += Globals.GRAVITY * delta;
	
	var jump = Input.is_action_just_pressed('ui_up');
	if (jump):
		vertVel = -Globals.PLAYER_JUMP_HEIGHT;
		$JumpSound.play()
	
	position.y += vertVel;
	
	if (position.y > 600): position.y = 600
	
	var tmp = Vector2(0, vertVel);
	var r = tmp.angle() - rotation;
	rotation += r * SMOOTH_ANGLE;
	rotation = min(MAX_ANGLE, max(MIN_ANGLE, rotation));


func CollisionDetectionArea_entered(area):
	if (area.is_in_group('kill_area')):
		get_tree().change_scene('res://scenes/GameOver.tscn');
		Globals.set_score(score)

func CollisionDetectionArea_exited(area):
	if (area.is_in_group('score_point')):
		score += 1;
