extends Node2D
var RanIconOne = preload("res://BreakingBadIcon.tscn")
var RanIconTwo = preload("res://FamilyGuyIcon.tscn")
var RanIconThree = preload("res://FortniteIcon.tscn")
var RanIconFour = preload("res://marvel_icon.tscn")
var RanIconFive = preload("res://MiscIcon.tscn")
var RanIconSix = preload("res://SpongeBobIcon.tscn")
var RanIconSeven = preload("res://the_boys_icon.tscn")
var start = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if start == true:
		start = false
		$Timer.start()


func _on_timer_timeout():
	var NewIconOne = RanIconOne.instantiate()
	var NewIconTwo = RanIconTwo.instantiate()
	var NewIconThree = RanIconThree.instantiate()
	var NewIconFour = RanIconFour.instantiate()
	var NewIconFive = RanIconFive.instantiate()
	var NewIconSix = RanIconSix.instantiate()
	var NewIconSeven = RanIconSeven.instantiate()
	var randomStatic = randi_range(1,10)
	if randomStatic == 1:
		add_child(NewIconOne)
	elif randomStatic == 2:
		add_child(NewIconTwo)
	elif randomStatic == 3:
		add_child(NewIconThree)
	elif randomStatic == 4:
		add_child(NewIconFour)
	elif randomStatic == 5:
		add_child(NewIconFive)
	elif randomStatic == 6:
		add_child(NewIconSix)
	elif randomStatic == 7:
		add_child(NewIconSeven)
	
