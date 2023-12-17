extends StaticBody2D

@export var player: bool
var MOVE_SPEED = 150.0
var SIZE = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (player):
		if (Input.is_action_pressed("up")):
			if (position.y >= SIZE + 20):
				position.y -= MOVE_SPEED * delta
		if (Input.is_action_pressed("down")):
			if (position.y  <= get_viewport().size.y - SIZE - 20):
				position.y += MOVE_SPEED * delta
			
