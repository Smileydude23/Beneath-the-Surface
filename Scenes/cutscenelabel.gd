extends Label

@export var type_speed := 0.04

var text_length := 0
var skipping := false

func _ready() -> void:
	visible_characters = 0
	skipping = false
	type_text()

func type_text() -> void:
	text_length = text.length()
	for i in range(text_length):
		if skipping:
			break
		visible_characters = i + 1
		await get_tree().create_timer(type_speed).timeout
	if skipping:
		visible_characters = text_length
	skipping = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		skipping = true
		visible_characters = text_length
