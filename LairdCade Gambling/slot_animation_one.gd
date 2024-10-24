extends Node2D
var SlotOne = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SlotOne == true:
		$AnimationPlayer.play("WhiteOutFWD")
		


func _on_animation_player_animation_finished(WhiteOutFWD):
	SlotOne = false
	$WhiteFive.visible = true
	get_parent().get_node("SlotAnimationTwo").SlotTwo = true
