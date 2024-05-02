extends Control


var NumFireballs = 1
var ControlN = NumFireballs 


func _on_button_pressed():
	NumFireballs = randi_range(1,20)
	ControlN = NumFireballs 
	$MarginContainer6/Diceroll.text = str(NumFireballs)


func _on_h_slider_changed():
	$SliderNum.text = str(NumFireballs)


func _on_h_slider_value_changed(value):
	NumFireballs = value
	ControlN = NumFireballs 
	$SliderNum.text = str(NumFireballs)


func _on_cast_button_pressed():
	while ControlN > 0:
		var scene_to_instance = preload("res://FireballPref.tscn")
		
		
		
		ControlN=ControlN-1
	
	
	
	
	
