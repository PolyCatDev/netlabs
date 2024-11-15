extends Control

@export var resource: Array[MainScreen] = []
@onready var main_label = $MainLabel

var slide = 0
func _ready() -> void:
	main_label.text = resource[slide].text

func _on_button_pressed() -> void:
	slide = slide + 1
	main_label.text = resource[slide].text
