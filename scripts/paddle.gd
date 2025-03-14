extends CharacterBody2D

enum PaddleColor {RED, BLUE}

@export var color: PaddleColor
@export var speed : int = 100
@export var paddle_sprite_node : Sprite2D
@export var paddle_sprite_texture : Texture2D

func _ready() -> void:
	paddle_sprite_node.texture = paddle_sprite_texture

func get_input() -> void:
	var input_direction : Vector2
	if color == PaddleColor.RED:
		input_direction = Input.get_vector('nothing', 'nothing', 'red_up', 'red_down')
	else:
		input_direction = Input.get_vector('nothing', 'nothing', 'blue_up', 'blue_down')
	velocity = input_direction * speed

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
