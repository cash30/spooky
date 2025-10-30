extends Marker2D
@export var bullet : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		spawn(bullet)
	pass

func spawn(inst) -> void:
	#position.x = get_parent().position.x
	#position.y = get_parent().position.y
	#
	var thisInst = inst.instantiate()
	thisInst.global_position = global_position
	thisInst.scale = Vector2(2, 2)
	get_tree().current_scene.add_child(thisInst)
