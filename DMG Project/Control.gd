extends Control


var NumFireballs = 1
var ControlN = NumFireballs 
@export var thing:PackedScene

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


func _on_cast_button_pressed(event):
	while ControlN > 0:
		var new_thing = preload("res://FireballPref.tscn").instantiate()
		new_thing.global_position = Vector2(220,0)
		new_thing.name = "Fire " + str(event)
		get_tree().get_root().add_child(new_thing)
		ControlN=ControlN-1
	pass
	
	
	
	
	
