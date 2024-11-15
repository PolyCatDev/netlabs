extends Node3D

@onready var anim = $AnimationPlayer

func _on_area_3d_area_entered(area: Area3D) -> void:
	anim.play("button_press")


func _on_area_3d_area_exited(area: Area3D) -> void:
	anim.play("button_release")
