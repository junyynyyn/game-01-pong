extends RigidBody2D

var BASE_SPEED = 200
var SPEED
var LOAD_POSITION: Vector2
var resetState = false
var increaseSpeed = false

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
		state.linear_velocity = Vector2(BASE_SPEED, BASE_SPEED)
		resetState = false
	if increaseSpeed == true:
		state.linear_velocity *= 1.1
		increaseSpeed = false

func reset():
	SPEED = BASE_SPEED
	resetState = true

func _on_timer_timeout():
	increaseSpeed = true
