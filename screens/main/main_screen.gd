extends Control

@export var resource: Array[MainScreen] = []
@onready var main_label = $HSplitContainer/HBoxContainer/Label

var slide = 0
func _ready() -> void:
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text

func _on_button_pressed() -> void:
	slide = slide + 1
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text


func _on_button_back_pressed() -> void:
	slide = slide - 1
	button_udeflow_overflow_prorection()
	main_label.text = resource[slide].text
	

func button_udeflow_overflow_prorection() -> void:
	var back_button = $HSplitContainer/MarginContainer/HBoxContainer/VBoxContainer/HSplitContainer/HBoxContainer/ButtonBack
	var next_button = $HSplitContainer/MarginContainer/HBoxContainer/VBoxContainer/HSplitContainer/HBoxContainer2/ButtonNext
	
	var back_button_replace = $HSplitContainer/MarginContainer/HBoxContainer/VBoxContainer/HSplitContainer/HBoxContainer/BackButtonReplacer
	var next_botton_replace = $HSplitContainer/MarginContainer/HBoxContainer/VBoxContainer/HSplitContainer/HBoxContainer2/NextButtonReplacer
	
	back_button_replace.visible = false
	back_button_replace
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
