extends Label

@export var typing_speed: float = 0.05 # Adjust speed in the Inspector

var full_text: String
var character_index: int = 0
var is_typing: bool = false

func _ready():
	full_text = text
	text = "" # Clear text initially
	visible_characters = 0 # Ensure no characters are visible
	$Timer.wait_time = typing_speed
	start_typing()

func start_typing():
	is_typing = true
	$Timer.start()

func _on_timer_timeout():
	if character_index < full_text.length():
		# Increment visible characters by 1 each time the timer times out
		visible_characters += 1 
		# Optional: play a typing sound here
		character_index += 1
	else:
		$Timer.stop()
		is_typing = false
		# Typing finished

# Optional: Allow skipping the effect with a button press
func _unhandled_input(event):
	if event.is_action_pressed("ui_accept") and is_typing:
		visible_characters = full_text.length()
		$Timer.stop()
		is_typing = false
		get_tree().set_input_as_handled() # Prevent input from affecting other elements
