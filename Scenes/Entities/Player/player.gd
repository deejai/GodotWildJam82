extends Node2D

@onready var body: CharacterBody2D = $CharacterBody2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _physics_process(delta):
	var direction := Vector2.ZERO
	direction.x = Input.get_axis("move left", "move right")
	direction.y = Input.get_axis("move up", "move down")

	if direction != Vector2.ZERO:
		direction = direction.normalized()
		body.rotation = direction.angle() + PI/2

	body.velocity = direction * 64.0
	body.move_and_slide()
