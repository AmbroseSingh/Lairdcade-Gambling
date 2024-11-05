extends Node2D
var r = randi_range(0,255)
var g = randi_range(0,255)
var b = randi_range(0,255)
var score = 0
var dropable = true



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$scoretext.text = "Score: " + str(score)
	




#func _on_timer_timeout() -> void:
	#$PlinkoBackground.self_modulate=Color(r,g,b)
	#Timer


func _on_green_body_entered(body: Node2D) -> void:

		score = score + 200
		dropable = true
		

func _on_yellow_body_entered(body: Node2D) -> void:
	
		score = score + 10
		dropable = true
		

func _on_red_body_entered(body: Node2D) -> void:
	
		score = score - 10
		dropable = true
		


func _on_backbutton_p_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
