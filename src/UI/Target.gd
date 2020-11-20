extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
# warning-ignore:return_value_discarded
	connect("body_entered", self, "_on_body_entered")
	visible = false
	

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		anim_player.play("fade_in")
		
		
# warning-ignore:unused_argument
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("click"):
		global_position = get_global_mouse_position()



# warning-ignore:unused_argument
func _on_body_entered(body: PhysicsBody2D) -> void:
	anim_player.play("fade_out")
