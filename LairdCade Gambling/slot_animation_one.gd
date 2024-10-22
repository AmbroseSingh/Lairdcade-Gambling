extends Node2D
var SlotOne = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SlotOne == true:
		$AnimationPlayer.play("WhiteOutFWD")
