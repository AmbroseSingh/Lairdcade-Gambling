extends Node2D
var r = randi_range(0,255)
var g = randi_range(0,255)
var b = randi_range(0,255)
var dropable = true



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$scoretext.text = "Score: " + str(Global.current_score)
	


#func _on_timer_timeout() -> void:
	#$PlinkoBackground.self_modulate=Color(r,g,b)
	#Timer


func _on_green_body_entered(body: Node2D) -> void:
		compare_current_selection(200)
		dropable = true
		

func _on_yellow_body_entered(body: Node2D) -> void:
	
		compare_current_selection(15)
		dropable = true
		

func _on_red_body_entered(body: Node2D) -> void:
	
		compare_current_selection(-10)
		dropable = true
		

func compare_current_selection(scoreamount):
	match Global.current_plinko_select:
		"res://marvel_chip.tscn":
			Global.MarvelToken+= scoreamount
			Global.current_score = Global.MarvelToken
		"res://fortnite_chip.tscn":
			Global.FortniteToken+= scoreamount
			Global.current_score = Global.FortniteToken
		"res://breaking_bad_chip.tscn":
			Global.BreakingBadToken+= scoreamount
			Global.current_score = Global.BreakingBadToken
		"res://family_guy_chip.tscn":
			Global.FamilyGuyToken+= scoreamount
			Global.current_score = Global.FamilyGuyToken
		"res://spongebob_chip.tscn":
			Global.SpongebobToken+= scoreamount
			Global.current_score = Global.SpongebobToken
		"res://the_boys_chip.tscn":
			Global.TheBoysToken+= scoreamount
			Global.current_score = Global.TheBoysToken
		"res://misc_chip.tscn":
			Global.MiscToken+= scoreamount
			Global.current_score = Global.MiscToken

"""func compare_current_score():
	match Global.current_plinko_select:
		"res://marvel_chip.tscn":
			Global.current_score.text = Global.MarvelToken.text
		"res://fortnite_chip.tscn":
			Global.current_score.text = Global.FortniteToken.text
		"res://breaking_bad_chip.tscn":
			Global.current_score.text = Global.BreakingBadToken
		"res://family_guy_chip.tscn":
			Global.current_score.text = Global.FamilyGuyToken
		"res://spongebob_chip.tscn":
			Global.current_score.text = Global.SpongebobToken
		"res://the_boys_chip.tscn":
			Global.current_score.text = Global.TheBoysToken
		"res://misc_chip.tscn":
			Global.current_score.text = Global.MiscToken"""



func _on_backbutton_p_pressed() -> void:
	get_tree().change_scene_to_file("res://titlescreen.tscn")
