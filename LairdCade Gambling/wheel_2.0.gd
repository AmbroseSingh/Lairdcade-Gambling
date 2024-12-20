extends Sprite2D

var spinning = false
var spin_velocity = 0
var friction = 0.98
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.centered = true

	var button_node = $"../Button"
	button_node.connect("pressed", Callable(self,"on_button_pressed"))


func _process(delta: float) -> void:
	if spinning:
		if spin_velocity != 0:
			var current_angle = self. rotation
			current_angle += spin_velocity * delta
			spin_velocity *= friction
			if abs(spin_velocity)< 0.01:
				spin_velocity = 0
				spinning = false
			self.rotation = current_angle

func _on_button_pressed() -> void:
	spin_velocity = randf_range(535,815)
	spinning = true
