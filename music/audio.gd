extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	if $AudioStreamPlayer2D.playing:
		$Button.text = "Play"
		$AudioStreamPlayer2D.stop()
	else:
		$Button.text = "Stop"
		$AudioStreamPlayer2D.play()
	pass # Replace with function body.

func _on_button_2_pressed() -> void:
	if $AudioStreamPlayer2D2.playing:
		$Button2.text = "Play"
		$AudioStreamPlayer2D2.stop()
	else:
		$Button2.text = "Stop"
		$AudioStreamPlayer2D2.play()
	pass # Replace with function body.
	
func _on_button_3_pressed() -> void:
	if $AudioStreamPlayer2D3.playing:
		$Button3.text = "Play"
		$AudioStreamPlayer2D3.stop()
	else:
		$Button3.text = "Stop"
		$AudioStreamPlayer2D3.play()
	pass # Replace with function body.

func _on_h_slider_value_changed(value: float) -> void:
	$AudioStreamPlayer2D.pitch_scale = value
	$AudioStreamPlayer2D2.pitch_scale = value
	$AudioStreamPlayer2D3.pitch_scale = value
	pass # Replace with function body.
	
func _on_h_slider_2_value_changed(value: float) -> void:
	var f:AudioEffectPhaser = AudioServer.get_bus_effect(0, 0)
	f.rate_hz = value
	pass # Replace with function body.
