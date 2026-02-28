extends TextureRect

@export var scroll_speed := 100.0

func _process(delta: float) -> void:
	position.x -= scroll_speed * delta
	
	if position.x < -texture.get_width():
		position.x = 0
