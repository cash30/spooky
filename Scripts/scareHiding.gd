extends Node2D
var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += 1 * delta
	if timer > 1:
		hide()
	pass
