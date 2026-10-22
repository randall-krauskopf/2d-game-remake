extends Sprite2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_left"):
		position.x -= 40
	if Input.is_action_just_pressed("ui_right"):
		position.x += 40
	if Input.is_action_just_pressed("ui_up"):
		position.y -= 40
	if Input.is_action_just_pressed("ui_down"):
		position.y += 40
