extends Node2D
var leverTimeout = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if leverTimeout == true:
		$Button.visible = false
	else:
		$Button.visible = true


func _on_button_pressed():
	$ButtonClick.play()
	$AnimationPlayer.play("ButtonAnimation")
	get_parent().get_node("StaticSpawner").start = true
	get_parent().get_node("StaticSpawner2").start = true
	get_parent().get_node("StaticSpawner3").start = true
	$SpinWaitTimer.start()
	leverTimeout = true


func _on_spin_wait_timer_timeout():
	get_parent().get_node("SlotAnimationOne").SlotOne = true
