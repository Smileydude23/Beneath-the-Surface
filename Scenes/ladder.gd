extends Node

@onready var player_in_range = false
@onready var blah = $popup_ui

func _ready():
	blah.hide()

func _on_body_entered(body):
	if body.is_in_group("Player"):
	#	player_in_range = true
	#	print(body.name)
		print("Something entered:", body.name)
		player_in_range = true
		blah.show()
	if Input.is_action_just_pressed("ui_accept") and player_in_range:
		blah.hide()
		get_tree().change_scene_to_file("res://Beneath the Surface/Scenes/glomb_restaurant.tscn")
	else:
		player_in_range = false
		blah.hide()

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("Player"):
	#	player_in_range = true
	#	print(body.name)
		print("Something entered:", body.name)
		player_in_range = true
		blah.show()
	if Input.is_action_just_pressed("ui_accept") and player_in_range:
		blah.hide()
		get_tree().change_scene_to_file("res://Beneath the Surface/Scenes/glomb_restaurant.tscn")
	else:
		player_in_range = false
		blah.hide()

func _on_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
