extends Control
@export var sound : PackedScene


func _ready() -> void:
	playSound()
	pass
	
func _process(_delta: float) -> void:
	pass
	

func playSound() -> void:
	
	if !sound:
		print("here is no sound file defined")
	
	var soundInst = sound.instantiate()
	add_child(soundInst)
	soundInst.play()
	print("polaying sound")
	
