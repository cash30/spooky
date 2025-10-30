extends Node
@export var lose : PackedScene = load("res://Scenes/lose/lose.tscn")

var score : int
var isAdmin : bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if isAdmin:
		if Input.is_action_just_pressed("admin_lose"):
			if lose:
				get_tree().change_scene_to_packed(lose)
			elif !lose:
				print("no lose scene defined in Globals.gd")
	
