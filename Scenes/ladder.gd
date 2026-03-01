extends Area2D

@onready var popup_ui = $Ladder/popup_ui

func _ready():
	connect("body_entered", self, "_on_area_2d_body_entered")
	connect("body_exited", self, "_on_area_2d_body_exited")

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		print("hello")
		popup_ui.show()

func _on_area_2d_body_exited(body):
	if body.is_in_group("Player"):
		popup_ui.hide()


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
