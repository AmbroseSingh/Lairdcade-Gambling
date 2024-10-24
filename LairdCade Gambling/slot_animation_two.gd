extends Node2D
var SlotTwo = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SlotTwo == true:
		$AnimationPlayer.play("WhiteOutRVS")


func _on_animation_player_animation_finished(WhiteOutRVS):
	SlotTwo = false
	get_parent().get_node("SlotAnimationThree").SlotThree = true
	$WhiteRFive.visible = true
