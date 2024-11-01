extends Node2D
var RanIconOne = preload("res://BreakingBadIcon.tscn")
var RanIconTwo = preload("res://FamilyGuyIcon.tscn")
var RanIconThree = preload("res://FortniteIcon.tscn")
var RanIconFour = preload("res://marvel_icon.tscn")
var RanIconFive = preload("res://MiscIcon.tscn")
var RanIconSix = preload("res://SpongeBobIcon.tscn")
var RanIconSeven = preload("res://the_boys_icon.tscn")
var start = false
var leverpull = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if start == true:
		start = false
		$Timer.start()
		
	#if leverpull == true:
		#var child = get_child(name)


func _on_timer_timeout():
	get_parent().get_node("Lever").leverTimeout = false
	var NewIconOne = RanIconOne.instantiate()
	var NewIconTwo = RanIconTwo.instantiate()
	var NewIconThree = RanIconThree.instantiate()
	var NewIconFour = RanIconFour.instantiate()
	var NewIconFive = RanIconFive.instantiate()
	var NewIconSix = RanIconSix.instantiate()
	var NewIconSeven = RanIconSeven.instantiate()
	var randomIcon = randi_range(1,7)
	if randomIcon == 1:
		add_child(NewIconOne)
		Global.iconThree = 1
	elif randomIcon == 2:
		add_child(NewIconTwo)
		Global.iconThree = 2
	elif randomIcon == 3:
		add_child(NewIconThree)
		Global.iconThree = 3
	elif randomIcon == 4:
		add_child(NewIconFour)
		Global.iconThree = 4
	elif randomIcon == 5:
		add_child(NewIconFive)
		Global.iconThree = 5
	elif randomIcon == 6:
		add_child(NewIconSix)
		Global.iconThree = 6
	elif randomIcon == 7:
		add_child(NewIconSeven)
		Global.iconThree = 7
