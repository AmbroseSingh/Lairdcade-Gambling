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
	print(dropable)




#func _on_timer_timeout() -> void:
	#$PlinkoBackground.self_modulate=Color(r,g,b)
	#Timer


func _on_green_body_entered(body: Node2D) -> void:

		score = score + 25
		dropable = true
		

func _on_yellow_body_entered(body: Node2D) -> void:
	
		score = score + 5
		dropable = true
		

func _on_red_body_entered(body: Node2D) -> void:
	
		score = score - 1
		dropable = true
		
