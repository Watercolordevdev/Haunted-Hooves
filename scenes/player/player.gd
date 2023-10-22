extends CharacterBody2D
const MAX_SPEED = 200


var enemy_in_range = false
var is_talking: bool = false

func _ready():

	pass
	
#DIALOGUE

#func _physics_process(delta):
#	if enemy_in_range == true && is_talking == false:
#		is_talking = true
#		DialogueManager.startdialogue(load("res://main.dialogue"), "start")
#	elif enemy_in_range == true && is_talking == true:
#		pass
#	else:
#		pass

	
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



func _on_detection_area_body_entered(body):
	print(body.get_name())
	if body.has_method("enemy"):
		enemy_in_range = true
		print("Enemy in range now")
	

func _on_detection_area_body_exited(body):
	if body.has_method("enemy"):
		enemy_in_range = false
		print("Enemy not in range now")

