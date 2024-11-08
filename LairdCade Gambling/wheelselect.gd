extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_breakingb_button_down() -> void:
	get_tree().change_scene_to_file("breakingbplaceholder")
func _on_famguy_button_down() -> void:
	get_tree().change_scene_to_file("famguyplaceholder")
		
func _on_fortnite_button_down() -> void:
	get_tree().change_scene_to_file("fortniteplaceholder")
		
func _on_marvel_button_down() -> void:
	get_tree().change_scene_to_file("marvelplaceholder")
		
func _on_misc_button_down() -> void:
	get_tree().change_scene_to_file("miscplaceholder")
		
func _on_spongeb_button_down() -> void:
	get_tree().change_scene_to_file("spongebplaceholder")


func _on_theboys_button_down() -> void:
	get_tree().change_scene_to_file("theboyspalceholder")


func _on_backbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
