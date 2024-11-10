extends Sprite2D

func _process(delta: float) -> void:
	$FNScore.text = "Tokens:" + str(Global.FamilyGuyToken)
