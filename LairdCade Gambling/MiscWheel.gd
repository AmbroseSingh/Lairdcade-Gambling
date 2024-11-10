extends Sprite2D
var rng = RandomNumberGenerator.new()
var tossup
var spinning = false
var spin_velocity = 0
var friction = 0.98
var winningslotcommon = false
var winningslotuncommon = false
var winningslotrare = false
var winningslotepic = false
var winningslotmythic = false
var winningslotlegendary = false
var spun = false
var finishspin = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.centered = true

	var button_node = $"../Button"
	button_node.connect("pressed", Callable(self,"on_button_pressed"))
	var collision_arrow = $"../Arrow"
	var collision_common = $"../common"
	var collision_uncommon = $"../Uncommon"
	var collision_rare = $"../Rare"
	var collision_epic = $"../Epic"
	var collision_Legendary =$"../Legendary"
	var collision_myhtical =$"../Mythical" 
	
func _process(delta: float) -> void:
	print(finishspin)
	#if finishspin == true:
		#$AudioStreamPlayer.play()
		#finishspin = false
	if spun == true and spin_velocity == 0:
		$Timer.start
	if spinning:
		if spin_velocity != 0:
			var current_angle = self. rotation
			current_angle += spin_velocity * delta
			spin_velocity *= friction
			get_parent().get_node("Button").visible = false
			if abs(spin_velocity)< 0.1:
				$AudioStreamPlayer2.play()
				spin_velocity = 0
				spinning = false
			self.rotation = current_angle
			get_parent().get_node("Button").visible = true
			
	if spinning == false and spun == true and winningslotcommon == true:
		if tossup == 1:
			get_parent().get_node("Shane").visible = true
			get_parent().get_node("Header").text = "You Got Shane!"
			get_parent().get_node("Footer").text = "30% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Finn").visible = true
			get_parent().get_node("Header").text = "You Got Finn!"
			get_parent().get_node("Footer").text = "30% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotuncommon == true:
		if tossup == 1:
			get_parent().get_node("Steve").visible = true 
			get_parent().get_node("Header").text = "You Got Steve!"
			get_parent().get_node("Footer").text = "10% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Jake").visible = true 
			get_parent().get_node("Header").text = "You Got Jake!"
			get_parent().get_node("Footer").text = "10% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotrare == true:
		if tossup == 1:
			get_parent().get_node("Mario").visible = true 
			get_parent().get_node("Header").text = "You Got Mario!"
			get_parent().get_node("Footer").text = "5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Rick_Grimes").visible = true 
			get_parent().get_node("Header").text = "You Got Rick Grimes!"
			get_parent().get_node("Footer").text = "5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotepic == true:
		if tossup == 1:
			get_parent().get_node("Luffy").visible = true 
			get_parent().get_node("Header").text = "You Got Luffy!"
			get_parent().get_node("Footer").text = "2% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Pucci").visible = true 
			get_parent().get_node("Header").text = "You Got Pucci!"
			get_parent().get_node("Footer").text = "2% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
	elif spinning == false and spun == true and winningslotmythic == true:
		if tossup == 1:
			get_parent().get_node("Node2D").visible = true 
			get_parent().get_node("Header").text = "You Got Dr. House!"
			get_parent().get_node("Footer").text = "1% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Dio").visible = true 
			get_parent().get_node("Header").text = "You Got Dio!"
			get_parent().get_node("Footer").text = "1% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotlegendary == true:
		if tossup == 1:
			get_parent().get_node("Chill_Guy").visible = true 
			get_parent().get_node("Header").text = "You Got A Chill Guy!"
			get_parent().get_node("Footer").text = "0.5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Node2D2").visible = true 
			get_parent().get_node("Header").text = "You Got Hello Kitty!"
			get_parent().get_node("Footer").text = "0.5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		
		
		
		

func _on_button_pressed() -> void:
	$ButtonPressed.play()
	var my_random_number = rng.randi_range(1, 2)
	tossup = my_random_number
	get_parent().get_node("Node2D2").visible = false 
	get_parent().get_node("Node2D").visible = false 
	get_parent().get_node("Steve").visible = false 
	get_parent().get_node("Shane").visible = false 
	get_parent().get_node("Rick_Grimes").visible = false 
	get_parent().get_node("Pucci").visible = false 
	get_parent().get_node("Mario").visible = false 
	get_parent().get_node("Luffy").visible = false 
	get_parent().get_node("Jake").visible = false 
	get_parent().get_node("Finn").visible = false
	get_parent().get_node("Dio").visible = false
	get_parent().get_node("Chill_Guy").visible = false
	get_parent().get_node("Header").visible = false
	get_parent().get_node("Footer").visible = false
	
	
	
	if Global.MiscToken >= 10:
		if spinning:
			spin_velocity = randf_range(535,815)
			spinning = false
			spun = true
			Global.MiscToken = Global.MiscToken - 10
		else:
			spin_velocity = randf_range(535,815)
			spinning = true
			Global.MiscToken = Global.MiscToken - 10
			spun = true
		
func _on_rare_body_area_entered(area):
	winningslotcommon = false
	winningslotuncommon = false
	winningslotrare = true
	winningslotepic = false
	winningslotmythic = false
	winningslotlegendary = false
	$Click1.play() 

func _on_legendary_body_area_entered(area):
	winningslotcommon = false
	winningslotuncommon = false
	winningslotrare = false
	winningslotepic = false
	winningslotmythic = false
	winningslotlegendary = true
	$Click2.play()

func _on_mythical_body_area_entered(area):
	winningslotcommon = false
	winningslotuncommon = false
	winningslotrare = false
	winningslotepic = false
	winningslotmythic = true
	winningslotlegendary = false
	$Click3.play() 

func _on_common_body_area_entered(area):
	winningslotcommon = true
	winningslotuncommon = false
	winningslotrare = false
	winningslotepic = false
	winningslotmythic = false
	winningslotlegendary = false
	$Click4.play()
	

func _on_epic_body_area_entered(area):
	winningslotcommon = false
	winningslotuncommon = false
	winningslotrare = false
	winningslotepic = true
	winningslotmythic = false
	winningslotlegendary = false
	$Click5.play()
	
func _on_uncommon_body_area_entered(area):
	winningslotcommon = false
	winningslotuncommon = true
	winningslotrare = false
	winningslotepic = false
	winningslotmythic = false
	winningslotlegendary = false
	$Click6.play()


func _on_character_pull_finished():
	finishspin = false


func _on_timer_timeout():
	$AudioStreamPlayer2.play()
	
