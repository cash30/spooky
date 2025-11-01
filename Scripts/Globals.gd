extends Node

@export var loseScene  : PackedScene = load("res://Scenes/UI/lose.tscn")
@export var startScene : PackedScene = load("res://Scenes/UI/start.tscn")
@export var main       : PackedScene = load("res://Scenes/Main/main.tscn")

var score              : int = 0
var isAdmin            : bool = true
var didLose            : bool = false
var didStart           : bool = false
var playerHealth       : int = 100
var timeUntilCanShoot  : float = 0

func _ready() -> void:
	pass 

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
	
