extends Control
#
#@export var scenes: Array[PackedScene]
#
#var scene_refs: Array[Node]
#var index: int = 0
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	for scene in scenes:
#		scene_refs.append(scene.instantiate())
#
#	replace_current_scene(scene_refs[index])
#
#
#func replace_current_scene(scene: Node) -> void:
#	for child in $SubViewportContainer/SubViewport.get_children():
#		$SubViewportContainer/SubViewport.remove_child(child)
#
#	$SubViewportContainer/SubViewport.add_child(scene)
#
#func _on_button_pressed():
#	index = (index + 1) % scene_refs.size()
#	replace_current_scene(scene_refs[index])
