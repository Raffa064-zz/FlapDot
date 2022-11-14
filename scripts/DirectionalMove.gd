extends Node2D

export var direction: Vector2
export var speed: float

func _process(delta):
	position += Vector2(direction) * speed
