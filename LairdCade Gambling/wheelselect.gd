extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Currency1.text = "Fortnite Tokens: " + str(Global.FortniteToken)
	$Currency2.text = "Misc Tokens: " + str(Global.MiscToken) 
	$Currency3.text = "Family Guy Tokens: " + str(Global.FamilyGuyToken)
	$Currency4.text = "Marvel Tokens: " + str(Global.MarvelToken)
	$Currency5.text = "Spongebob Tokens: " + str(Global.SpongebobToken)
	$Currency6.text = "Breaking Bad Tokens: " + str(Global.BreakingBadToken)
	$Currency7.text = "The Boys Tokens: " + str(Global.TheBoysToken) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_breakingb_button_down() -> void:
	get_tree().change_scene_to_file("res://BreakingBadWheel.tscn")
func _on_famguy_button_down() -> void:
	get_tree().change_scene_to_file("res://FamilyGuyWheel.tscn")
		
func _on_fortnite_button_down() -> void:
	get_tree().change_scene_to_file("res://wheel_fortnight_ver.tscn")
		
func _on_marvel_button_down() -> void:
	get_tree().change_scene_to_file("res://MarvelWheel.tscn")
		
func _on_misc_button_down() -> void:
	get_tree().change_scene_to_file("res://MiscWheel.tscn")
		
func _on_spongeb_button_down() -> void:
	get_tree().change_scene_to_file("res://SpongeBobWheel.tscn")


func _on_theboys_button_down() -> void:
	get_tree().change_scene_to_file("res://TheBoysWheel.tscn")


func _on_backbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
