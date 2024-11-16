extends Node3D

@export var dedicated_slide: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.current_scene.connect(slide_check)


func slide_check(slide):
	if slide != dedicated_slide:
		queue_free()
