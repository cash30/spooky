extends Marker2D
@export var spider : PackedScene
@export var spiderXOffset = randi_range(0, 1130)
var timer = 1
var timeBetweenSpiders = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	spawnAtInterval(timeBetweenSpiders, spider, spiderXOffset, 0)
	
	if timeBetweenSpiders > 0.5:
		timeBetweenSpiders -= 0.05 * delta
	
	if Globals.isAdmin and Input.is_action_just_pressed("admin_spawn_spider"):
		spawn(spider, spiderXOffset, 0)
	
func spawn(inst, Xoffset, Yoffset) -> void:
	
	var offsetX = Xoffset
	var offsetY = Yoffset
	var thisInst = inst.instantiate()
	thisInst.scale = Vector2(2, 2)
	thisInst.position = Vector2(offsetX, offsetY)
	add_child(thisInst)
	

func spawnAtInterval(interval, inst, Xoffset, Yoffset) -> void:
	spiderXOffset = randi_range(0, 1050)
	Xoffset = Xoffset
	timer -= 1 * get_process_delta_time()
	if timer <= 0:
		spawn(inst, Xoffset, Yoffset)
		timer = interval
