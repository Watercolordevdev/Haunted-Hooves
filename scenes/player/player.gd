extends CharacterBody2D
const MAX_SPEED = 200


func _ready():
	pass
	
func _process(delta):
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	velocity = direction * MAX_SPEED
	move_and_slide()
	
func get_movement_vector():
	var movement_vector = Vector2.ZERO
	var x_movement = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var y_movement = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	return Vector2(x_movement, y_movement)
