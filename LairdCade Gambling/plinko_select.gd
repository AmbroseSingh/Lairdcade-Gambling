extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_marvelbutton_pressed() -> void:
	Global.current_plinko_select = ("res://marvel_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")


func _on_fortnitebutton_pressed() -> void:
	Global.current_plinko_select = ("res://fortnite_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")

func _on_breakingbutton_pressed() -> void:
	Global.current_plinko_select = ("res://the_boys_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")


func _on_familybutton_pressed() -> void:
	Global.current_plinko_select = ("res://family_guy_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")


func _on_spongebobbutton_pressed() -> void:
	Global.current_plinko_select = ("res://spongebob_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")

func _on_boysbutton_pressed() -> void:
	Global.current_plinko_select = ("res://the_boys_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")

func _on_miscbutton_pressed() -> void:
	Global.current_plinko_select = ("res://misc_chip.tscn")
	get_tree().change_scene_to_file("res://plinko.tscn")


func _on_backbutton_ps_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
