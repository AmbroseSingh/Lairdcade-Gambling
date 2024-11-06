extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_buttonclick_finished() -> void:
	if Global.BreakingBadToken > 10:
		Global.current_plinko_select = ("res://the_boys_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.BreakingBadToken = Global.BreakingBadToken - 10


func _on_button_down() -> void:
	$buttonclick.play()
