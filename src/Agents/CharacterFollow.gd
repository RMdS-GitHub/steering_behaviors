extends KinematicBody2D


onready var sprite: Sprite = $TriangleRed

export var max_speed: = 500.0
var _velocity: = Vector2.ZERO


func _physics_process(delta: float) -> void:
	var target_global_position: Vector2 = get_global_mouse_position()
	
	_velocity = Vector2()
	
	move_and_slide(_velocity)
