extends RigidBody2D

var BASE_SPEED = 200
var LOAD_POSITION: Vector2
var resetState = false
var increaseSpeed = false
var stop = false

# Called when the node enters the scene tree for the first time.
func _ready():
	LOAD_POSITION = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	Globals.ballPosition = global_position
	
func _integrate_forces(state: PhysicsDirectBodyState2D):
	if resetState == true:
		state.transform.origin = LOAD_POSITION
		state.linear_velocity = Vector2(BASE_SPEED, BASE_SPEED)
		resetState = false
	if increaseSpeed == true:
		state.linear_velocity *= 1.1
		increaseSpeed = false
	if stop == true:
		state.transform.origin = LOAD_POSITION
		state.linear_velocity = Vector2(0, 0)
		stop = false

func reset():
	resetState = true
	
func start():
	apply_force(Vector2(BASE_SPEED, BASE_SPEED))
	resetState = true

func _on_timer_timeout():
	increaseSpeed = true

func stopGame():
	stop = true
