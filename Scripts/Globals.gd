extends Node
@export var loseScene : PackedScene = load("res://Scenes/lose/lose.tscn")
@export var startScene : PackedScene = load("res://Scenes/lose/start.tscn")
@export var main : PackedScene = load("res://Scenes/Main/main.tscn")
var score : int
var isAdmin : bool = true
var didLose : bool = false
var didStart : bool = false
var playerHealth : int = 100
var timeUntilCanShoot : float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if !didStart:
		title()
	
	if playerHealth <= 0 and !didLose:
		lose()
		didLose = true
	
	if isAdmin:
		if Input.is_action_just_pressed("admin_lose"):
			lose()
		if Input.is_action_just_pressed("admin_restart"):	
			title()

func title() -> void:
	didLose = false
	if startScene:
		didStart = true
		get_tree().change_scene_to_packed(startScene)
	elif !startScene:
		print("no title scene defined in Globals.gd")
	pass
func lose() -> void:
	if loseScene:
		get_tree().change_scene_to_packed(loseScene)
	elif !loseScene:
		print("no lose scene defined in Globals.gd")
	pass
func start() -> void:
	if main:
		get_tree().change_scene_to_packed(main)
		didStart = true
	elif !main:
		print("no main scene defined in Globals.gd")
	
