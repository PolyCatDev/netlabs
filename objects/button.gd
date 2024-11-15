extends Node3D

@onready var anim = $AnimationPlayer


func _on_area_3d_body_entered(body: Node3D) -> void:
	anim.play("button_press")


func _on_area_3d_body_exited(body: Node3D) -> void:
	anim.play("button_release")
