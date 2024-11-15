extends Control

@export var resource: MainScreen
@onready var main_label = $MainLabel

func _ready() -> void:
	main_label.text = resource.text
	


	
