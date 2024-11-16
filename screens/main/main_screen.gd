extends Control

signal current_slide(slide)

@export var resource: Array[MainScreen] = []
@onready var main_label = $HBoxContainer/HBoxContainer/Label
@onready var sprite = $HBoxContainer/MarginContainer/HBoxContainer/VBoxContainer/TextureRect

var slide = 0
func _ready() -> void:
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text
	sprite.texture = resource[slide].texture

func _on_button_pressed() -> void:
	slide = slide + 1
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text
	sprite.texture = resource[slide].texture
	emit_signal("current_slide", slide)
	

func _on_button_back_pressed() -> void:
	slide = slide - 1
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text
	sprite.texture = resource[slide].texture
	emit_signal("current_slide", slide)
	

func button_udeflow_overflow_prorection() -> void:
	var back_button = $HBoxContainer/MarginContainer/HBoxContainer/VBoxContainer/HBoxContainer/HBoxContainer/ButtonBack
	var next_button = $HBoxContainer/MarginContainer/HBoxContainer/VBoxContainer/HBoxContainer/HBoxContainer/ButtonNext
	
	var back_button_replace = $HBoxContainer/MarginContainer/HBoxContainer/VBoxContainer/HBoxContainer/HBoxContainer/BackButtonReplacer
	var next_botton_replace = $HBoxContainer/MarginContainer/HBoxContainer/VBoxContainer/HBoxContainer/HBoxContainer/NextButtonReplacer
	
	back_button_replace.visible = false
	next_botton_replace.visible = false
	
	if slide <= 0:
		back_button_replace.visible = true
		back_button.visible = false
		
	elif slide >= resource.size() - 1:
		next_botton_replace.visible = true
		next_button.visible = false
		
	else:
		back_button.visible = true
		next_button.visible = true
