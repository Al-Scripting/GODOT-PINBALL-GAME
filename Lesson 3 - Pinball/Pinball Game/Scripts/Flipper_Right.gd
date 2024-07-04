extends CharacterBody2D

var flip_rest_position : float = 155
var flip_speed : int = 10
var flip_max : int = 255

var Flipping : bool = false
var Flipping_Cooldown : bool = false
var pressing_Flipper : bool = false

func _physics_process(_delta):
	if Input.is_action_just_pressed("Right_Flip_Button"):
		pressing_Flipper = true
		if Flipping_Cooldown == false:
			Flipping = true
	
	if Input.is_action_just_released("Right_Flip_Button"):
		pressing_Flipper = false
		
	if Flipping == true:
		rotation_degrees += flip_speed
		
		if rotation_degrees >= flip_max:
			rotation_degrees = flip_max
			if pressing_Flipper == false:
				Flipping = false
				Flipping_Cooldown = true
	if Flipping_Cooldown == true:
		if rotation_degrees > flip_rest_position :
			rotation_degrees = rotation_degrees - 5
		else:
			Flipping_Cooldown = false
