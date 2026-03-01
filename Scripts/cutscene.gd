extends Node

@onready var screen1 = $"scene 1/sludge factory"
@onready var screen2 = $"scene 2/candy factory"
@onready var screen3 = $"scene 3/broken factory"
@onready var typewriter1 = $"scene 1/cutscenelabel"
@onready var typewriter2 = $"scene 2/cutscenelabel2"
@onready var typewriter3 = $"scene 3/cutscenelabel3"

func _ready() -> void:
	screen1.show()
	screen2.hide()
	screen3.hide()
	await get_tree().create_timer(3.2).timeout
	switch_to_screen2()

func switch_to_screen2() -> void:
	screen1.hide()
	screen2.show()
	typewriter2.type_text()
	await get_tree().create_timer(3.5).timeout
	switch_to_screen3()
	
func switch_to_screen3() -> void:
	screen2.hide()
	screen3.show()
	typewriter3.type_text()
	await get_tree().create_timer(4).timeout
	screen3.hide()
	await get_tree().change_scene_to_file("res://Beneath the Surface/Scenes/game.tscn")
