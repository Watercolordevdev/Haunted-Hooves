extends Camera2D

func _ready():
	make_current()
	

func _process(delta):
	var player_nodes = get_tree().get_nodes_in_group("player")
	pass

