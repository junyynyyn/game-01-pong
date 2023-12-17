extends RigidBody2D

var BASE_SPEED = 200
var SPEED

# Called when the node enters the scene tree for the first time.
func _ready():
	SPEED = BASE_SPEED

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	velocity = velocity.normalized() * Vector2(SPEED, SPEED)

func reset():
	SPEED = BASE_SPEED
	pass
