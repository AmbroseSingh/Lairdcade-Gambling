extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	$AudioStreamPlayer.play()

func _on_audio_stream_player_finished() -> void:
	if Global.MarvelToken > 10:
		Global.current_plinko_select = ("res://marvel_chip.tscn")
		get_tree().change_scene_to_file("res://plinko.tscn")
		Global.MarvelToken = Global.MarvelToken - 10
	
