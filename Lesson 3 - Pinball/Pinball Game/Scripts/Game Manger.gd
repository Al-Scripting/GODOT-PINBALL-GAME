extends Node2D

var Score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Update_UI()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Update_UI()

func Update_UI():
	var ball = get_node_or_null("Respawn/Ball")
	if ball:
		var lives = ball.lives
		$Label.text = "Score: " + str(Score) + " Lives: " + str(lives)
	else:
		pass
