extends Node2D
var SlotThree = false
var clear = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if SlotThree == true:
		$AnimationPlayer.play("WhiteOutFinal")
		
	if clear == true:
		$WhiteFive.visible = false
	else:
		$WhiteFive.visible = true


func _on_animation_player_animation_finished(WhiteOutFinal):
	SlotThree = false
	clear = false
	get_parent().get_node("IconSpawner3").start = true
