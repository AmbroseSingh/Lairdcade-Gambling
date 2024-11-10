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
		get_parent().get_node("Meg").visible = true
		get_parent().get_node("Header").text = "You Got Meg!"
		get_parent().get_node("Footer").text = "60% spin rate!"
		get_parent().get_node("Header").visible = true
		get_parent().get_node("Footer").visible = true
		finishspin = true
	elif spinning == false and spun == true and winningslotuncommon == true:
		if tossup == 1:
			get_parent().get_node("Node2D2").visible = true 
			get_parent().get_node("Header").text = "You Got Herbert!"
			get_parent().get_node("Footer").text = "10% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Lois").visible = true 
			get_parent().get_node("Header").text = "You Got Lois!"
			get_parent().get_node("Footer").text = "10% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotrare == true:
		if tossup == 1:
			get_parent().get_node("Peterg").visible = true 
			get_parent().get_node("Header").text = "You Got Peter!"
			get_parent().get_node("Footer").text = "5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Node2D").visible = true 
			get_parent().get_node("Header").text = "You Got Brian!"
			get_parent().get_node("Footer").text = "5% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
	elif spinning == false and spun == true and winningslotepic == true:
		if tossup == 1:
			get_parent().get_node("Stewie").visible = true 
			get_parent().get_node("Header").text = "You Got Stewie!"
			get_parent().get_node("Footer").text = "2% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Joe").visible = true 
			get_parent().get_node("Header").text = "You Got Joe Swan!"
			get_parent().get_node("Footer").text = "2% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
	elif spinning == false and spun == true and winningslotmythic == true:
		if tossup == 1:
			get_parent().get_node("Chicken").visible = true 
			get_parent().get_node("Header").text = "You Got The Chicken!"
			get_parent().get_node("Footer").text = "1% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
			finishspin = true
		elif tossup == 2:
			get_parent().get_node("Quagmire").visible = true 
			get_parent().get_node("Header").text = "Giggity! You Got Quagmire!"
			get_parent().get_node("Footer").text = "1% spin rate!"
			get_parent().get_node("Header").visible = true
			get_parent().get_node("Footer").visible = true
		finishspin = true
	elif spinning == false and spun == true and winningslotlegendary == true:
		get_parent().get_node("Gold_Peter").visible = true 
		get_parent().get_node("Header").text = "You Got Gold Peter Griffin!"
		get_parent().get_node("Footer").text = "1% spin rate!"
		get_parent().get_node("Header").visible = true
		get_parent().get_node("Footer").visible = true
		finishspin = true
		
		
		
		

func _on_button_pressed() -> void:
	$ButtonPressed.play()
	var my_random_number = rng.randi_range(1, 2)
	tossup = my_random_number
	get_parent().get_node("Node2D2").visible = false 
	get_parent().get_node("Node2D").visible = false 
	get_parent().get_node("Chicken").visible = false 
	get_parent().get_node("Gold_Peter").visible = false 
	get_parent().get_node("Joe").visible = false 
	get_parent().get_node("Lois").visible = false 
	get_parent().get_node("Peterg").visible = false 
	get_parent().get_node("Meg").visible = false 
	get_parent().get_node("Quagmire").visible = false 
	get_parent().get_node("Stewie").visible = false
	get_parent().get_node("Header").visible = false
	get_parent().get_node("Footer").visible = false
	
	if Global.FamilyGuyToken >= 2:
		if spinning:
			spin_velocity = randf_range(535,815)
			spinning = false
			spun = true
			Global.FamilyGuyToken = Global.FamilyGuyToken - 2
		else:
			spin_velocity = randf_range(535,815)
			spinning = true
			Global.FamilyGuyToken = Global.FamilyGuyToken - 2
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
	
