extends Node2D
var RanOne = preload("res://StaticOne.tscn")
var RanTwo = preload("res://StaticTwo.tscn")
var RanThree = preload("res://StaticThree.tscn")
var RanFour = preload("res://StaticFour.tscn")
var RanFive = preload("res://StaticFive.tscn")
var RanSix = preload("res://StaticSix.tscn")
var RanSeven = preload("res://StaticSeven.tscn")
var RanEight = preload("res://StaticEight.tscn")
var RanNine = preload("res://StaticNine.tscn")
var RanTen = preload("res://StaticTen.tscn")
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
	var NewStaticOne = RanOne.instantiate()
	var NewStaticTwo = RanTwo.instantiate()
	var NewStaticThree = RanThree.instantiate()
	var NewStaticFour = RanFour.instantiate()
	var NewStaticFive = RanFive.instantiate()
	var NewStaticSix = RanSix.instantiate()
	var NewStaticSeven = RanSeven.instantiate()
	var NewStaticEight = RanEight.instantiate()
	var NewStaticNine = RanNine.instantiate()
	var NewStaticTen = RanTen.instantiate()
	var randomStatic = randi_range(1,10)
	if randomStatic == 1:
		add_child(NewStaticOne)
	elif randomStatic == 2:
		add_child(NewStaticTwo)
	elif randomStatic == 3:
		add_child(NewStaticThree)
	elif randomStatic == 4:
		add_child(NewStaticFour)
	elif randomStatic == 5:
		add_child(NewStaticFive)
	elif randomStatic == 6:
		add_child(NewStaticSix)
	elif randomStatic == 7:
		add_child(NewStaticSeven)
	elif randomStatic == 8:
		add_child(NewStaticEight)
	elif randomStatic == 9:
		add_child(NewStaticNine)
	elif randomStatic == 10:
		add_child(NewStaticTen)
	
