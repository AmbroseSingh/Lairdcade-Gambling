extends Node2D

var chip = preload("res://pokerchip.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_dropbutton_pressed() -> void:
	if get_parent().get_node(".").dropable == true:
		position.x = randi_range(100, 1000)
		position.y = 173
		var newchip = chip.instantiate()
		add_child(newchip)
		get_parent().get_node(".").dropable = false
