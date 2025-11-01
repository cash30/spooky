extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if value < 100:
		value += 100 * delta
	if Input.is_action_just_pressed("shoot") and value >= 100:
		value = 0
	pass
