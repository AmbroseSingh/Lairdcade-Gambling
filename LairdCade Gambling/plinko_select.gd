extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_marvelbutton_pressed() -> void:
	if Global.MarvelToken > 10:
		Global.current_plinko_select = ("res://marvel_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.MarvelToken = Global.MarvelToken - 10


func _on_fortnitebutton_pressed() -> void:
	if Global.FortniteToken > 10:
		Global.current_plinko_select = ("res://fortnite_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.FortniteToken = Global.FortniteToken - 10

func _on_breakingbutton_pressed() -> void:
	if Global.BreakingBadToken > 10:
		Global.current_plinko_select = ("res://the_boys_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.BreakingBadToken = Global.BreakingBadToken - 10


func _on_familybutton_pressed() -> void:
	if Global.FamilyGuyToken > 10:
		Global.current_plinko_select = ("res://family_guy_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.FamilyGuyToken = Global.FamilyGuyToken - 10


func _on_spongebobbutton_pressed() -> void:
	if Global.SpongebobToken > 10:
		Global.current_plinko_select = ("res://spongebob_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.SpongebobToken = Global.SpongebobToken - 10

func _on_boysbutton_pressed() -> void:
	if Global.TheBoysToken > 10:
		Global.current_plinko_select = ("res://the_boys_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.TheBoysToken = Global.TheBoysToken - 10

func _on_miscbutton_pressed() -> void:
	if Global.MiscToken > 10:
		Global.current_plinko_select = ("res://misc_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.MiscToken = Global.MiscToken - 10


func _on_backbutton_ps_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
