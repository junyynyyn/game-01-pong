extends RigidBody2D

var BASE_SPEED = 200
var SPEED
var LOAD_POSITION: Vector2
var resetState = false

# Called when the node enters the scene tree for the first time.
func _ready():
	SPEED = BASE_SPEED
	LOAD_POSITION = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _integrate_forces(state: PhysicsDirectBodyState2D):
	if resetState == true:
		state.transform.origin = LOAD_POSITION
		resetState = false

func reset():
	SPEED = BASE_SPEED
	resetState = true
