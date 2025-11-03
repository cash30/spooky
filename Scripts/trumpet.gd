extends AudioStreamPlayer
var didPlay : bool = false

func _process(_delta: float) -> void:
	play()
	didPlay = true
