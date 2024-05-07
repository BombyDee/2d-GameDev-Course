extends Area2D

@onready var flame: Sprite2D = $Flame

func _ready() -> void:
	# This parameter of the shader material gives each flame a slightly different look and randomized animation.
	flame.material.set("shader_parameter/offset", global_position * 0.1)

func _input_event(viewport: Node, event: InputEvent, shape_index: int):
	var is_mouse_pressed: bool = (
		event is InputEventMouseButton and
		event.button_index == MOUSE_BUTTON_LEFT and
		event.is_pressed()
	)

	if is_mouse_pressed:
		flame.visible = not flame.visible
