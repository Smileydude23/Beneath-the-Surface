extends Node

@onready var screen1 = $"scene 1/sludge factory"
@onready var screen2 = $"scene 2/candy factory"
@onready var typewriter1 = $"scene 1/cutscenelabel"
@onready var typewriter2 = $"scene 2/cutscenelabel2"

func _ready() -> void:
	screen1.show()
	screen2.hide()
	await get_tree().create_timer(6.0).timeout
	switch_to_screen2()

func switch_to_screen2() -> void:
	screen1.hide()
	screen2.show()
	typewriter2.type_text()
