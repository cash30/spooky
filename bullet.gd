extends Area2D
@export var speed = 700

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y -= speed * delta
	pass

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("spider"):
		queue_free()
