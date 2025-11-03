extends Area2D
@export var speed = randi_range(50, 200)
var hasBeenHit = false
var freeFallSpeed = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !hasBeenHit:
		position.y += speed * delta
	else:
		position.y += freeFallSpeed * delta
		freeFallSpeed += 100 * delta
		rotation += 10 * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("deathLine"):
		print("haha i was too fast")
		Globals.playerHealth -= 10
		Globals.lose()
		queue_free()
		
	if area.is_in_group("player"):
		print ("oof")
		
	if area.is_in_group("bullet"):
		Globals.score += 10
		set_deferred("monitoring", false)
		print ("killing spooder")
		hasBeenHit = true
		remove_from_group("spider")
		#position.y += freeFallSpeed

#i am glad that this computer works with wakatime becuase the other one isnt working. no one is gonna read this but if you do DM Cassius Crum on slack and tell me. also tell me if you find the other rant about wakatime. i was tired, ok? (i 100% DONT just want more time)
