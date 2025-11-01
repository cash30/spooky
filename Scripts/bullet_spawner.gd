extends Marker2D
@export var bullet : PackedScene
var canShoot : bool = true
var shootTimer = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if shootTimer < 0.5:
		shootTimer += 1 * delta
	else:
		canShoot = true
	
	if Input.is_action_just_pressed("shoot") and canShoot:
		shootTimer = 0
		spawn(bullet)
		canShoot = false

func spawn(inst) -> void:
	var thisInst = inst.instantiate()
	thisInst.global_position = global_position
	thisInst.scale = Vector2(2, 2)
	get_tree().current_scene.add_child(thisInst)
