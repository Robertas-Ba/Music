extends Node2D

var pattern = []
var steps = 16

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	await $"../Button2".button_down
	pass


var i:int
var num_samples:int

func _on_timer_timeout() -> void:
	var s = get_child(i)
	s.play()
	print(i)
	i=i+1
	if i == num_samples:
		i=0;
		
	pass # Replace with function body.


func _on_area_2d_mouse_entered() -> void:
	pass # Replace with function body.
