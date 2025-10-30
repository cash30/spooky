extends Sprite2D
var xoffset = randi_range(-20, 20)
var originalPos = position
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	xoffset = randi_range(-10, 10)
	position.x = originalPos.x + xoffset	
	position.y = originalPos.y + xoffset
	pass
