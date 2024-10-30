extends Node2D
var SlotTwo = false
var clear = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SlotTwo == true:
		$AnimationPlayer.play("WhiteOutRVS")

	if clear == true:
		$WhiteRFive.visible = false
	else:
		$WhiteRFive.visible = true

func _on_animation_player_animation_finished(WhiteOutRVS):
	SlotTwo = false
	get_parent().get_node("SlotAnimationThree").SlotThree = true
	clear = false
	get_parent().get_node("IconSpawner2").start = true
