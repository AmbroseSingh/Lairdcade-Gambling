extends Control
var tokens = 0
var matchingicon
var processPOne = false
var processPTwo = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if processPOne == true:
		if Global.IconOne == Global.IconTwo and Global.IconOne != Global.iconThree:
			tokens = tokens + 10
			matchingicon = Global.IconOne
			processPOne = false
			processPTwo = true
		elif Global.IconOne == Global.IconThree and Global.IconOne != Global.iconTwo:
			tokens = tokens + 10
			matchingicon = Global.IconOne
			processPOne = false
			processPTwo = true
		elif Global.IconTwo == Global.IconThree and Global.IconTwo != Global.iconOne:
			tokens = tokens + 10
			matchingicon = Global.IconTwo 
			processPOne = false
			processPTwo = true
		elif Global.IconOne == Global.IconTwo and Global.IconOne == Global.iconThree:
			tokens = tokens + 50
			matchingicon = Global.IconOne
			processPOne = false
			processPTwo = true
		else: 
			tokens = tokens + 0
			processPOne = false
			processPTwo = true
	if processPTwo == true:
		if matchingicon == 1:
			Global.BreakingBadToken = Global.BreakingBadToken + tokens
			processPTwo = false
		elif matchingicon == 2:
			Global.FamilyGuyToken =  Global.FamilyGuyToken + tokens
			processPTwo = false
		elif matchingicon == 3:
			Global.FortniteToken = Global.FortniteToken + tokens
			processPTwo = false
		elif matchingicon == 4:
			Global.MarvelToken = Global.MarvelToken + tokens
			processPTwo = false
		elif matchingicon == 5:
			Global.MiscToken = Global.MiscToken + tokens
			processPTwo = false
		elif matchingicon == 6:
			Global.SpongebobToken = Global.SpongebobToken + tokens
			processPTwo = false
		elif matchingicon == 7:
			Global.TheBoysToken = Global.TheBoysToken + tokens
			processPTwo = false
