extends CharacterBody2D


var CurrPos = Vector2()
var move_cooldown = 0.15
var time_since_move = 0.0

func _physics_process(delta):
	time_since_move += delta
	if time_since_move >= move_cooldown:
		if Input.is_action_pressed("ui_right"):
			CurrPos.x += 32
			time_since_move = 0
			
		elif Input.is_action_pressed("ui_left"):
			CurrPos.x -= 32
			time_since_move = 0
			
		elif Input.is_action_pressed("ui_down"):
			CurrPos.y += 32
			time_since_move = 0
			
		elif Input.is_action_pressed("ui_up"):
			CurrPos.y -= 32
			time_since_move = 0

	self.position = CurrPos
