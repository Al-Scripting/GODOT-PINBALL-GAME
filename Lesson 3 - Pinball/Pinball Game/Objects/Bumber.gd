extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	get_parent().Score += 10
	get_parent().Update_UI()
	
	get_node("Sprite2D").modulate = Color(0,1,0)
	pass 


func _on_area_2d_body_exited(body):
	get_node("Sprite2D").modulate = Color(1,1,1)
