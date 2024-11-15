extends Node3D

@onready var anim = $AnimationPlayer
@export_group("Scene Switch")
@export var change_scene = false
@export var scene : PackedScene: set = set_scene

var scene_path: String

func set_scene(scene: PackedScene) -> void:
	scene_path = scene.resource_path

func _on_area_3d_body_entered(body: Node3D) -> void:
	anim.play("button_press")
	
	if change_scene:
		get_tree().change_scene_to_file(scene_path)


func _on_area_3d_body_exited(body: Node3D) -> void:
	anim.play("button_release")
