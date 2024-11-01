extends Node2D
var leverTimeout = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if leverTimeout == true:
		$Button.visible = false
	elif leverTimeout == false:
		$Button.visible = true


func _on_button_pressed():
	$ButtonClick.play()
	$AnimationPlayer.play("ButtonAnimation")
	get_parent().get_node("StaticSpawner").start = true
	get_parent().get_node("StaticSpawner2").start = true
	get_parent().get_node("StaticSpawner3").start = true
	get_parent().get_node("SlotAnimationOne").clear = true
	get_parent().get_node("SlotAnimationTwo").clear = true
	get_parent().get_node("SlotAnimationThree").clear = true
	
	$SpinWaitTimer.start()
	leverTimeout = true
	var deleteitems = get_tree().get_nodes_in_group("SlotIcons")
	for items in deleteitems:
		items.queue_free()

func _on_spin_wait_timer_timeout():
	get_parent().get_node("SlotAnimationOne").SlotOne = true
