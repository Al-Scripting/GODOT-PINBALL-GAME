extends RigidBody2D

var respawning_ball: bool = false
var lives: int = 3
var initial_position: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	# Store the initial position
	initial_position = global_position
	print("Initial position: ", initial_position)

func reset_ball():
	print("Resetting ball...")
	global_position = initial_position
	print("Reset position to: ", global_position)
	linear_velocity = Vector2(0, 0)
	angular_velocity = 0
	respawning_ball = false
	lives -= 1
	

func _integrate_forces(state):
	if Input.is_action_just_pressed("Rest_Ball"):
		print('Rest_Ball pressed')
		reset_ball()
	if respawning_ball:
		reset_ball()

func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if lives > 0: 
		respawning_ball = true
		print(str(lives))
	else:
		print("Game_Over")
		queue_free()
	pass


