extends Node

@onready var player_in_range = false
@onready var blah = $popup_ui
@onready var has_run = false
func _process(delta):
	if not has_run:
		blah.hide()
		has_run = true
#func _on_body_entered(body):
	#if body.is_in_group("Player"):
	##	player_in_range = true
	##	print(body.name)
		#print("Something entered:", body.name)
		#player_in_range = true
		#blah.show()
	#if Input.is_action_just_pressed("ui_accept") and player_in_range:
		#blah.hide()
		#get_tree().change_scene_to_file("res://Beneath the Surface/Scenes/glomb_restaurant.tscn")
	#else:
		#player_in_range = false
		#blah.hide()

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("Player"):
		player_in_range = true
		blah.show()
		get_tree().create_timer(1).timeout
		blah.hide()
	#	player_in_range = true
	#	print(body.name)
		if player_in_range:
			print("Something entered:", body.name)
			if  player_in_range:
				print("yessir!!!avskjgfsdakjf")
				get_tree().change_scene_to_file("res://Beneath the Surface/Scenes/glomb_restaurant.tscn")
