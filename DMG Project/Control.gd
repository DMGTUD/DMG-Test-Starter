extends Control

var NumFireballs = 1

func _on_button_pressed():
	NumFireballs = randi_range(1,20)
	$MarginContainer6/Diceroll.text = str(NumFireballs)


func _on_h_slider_changed():
	$SliderNum.text = str(NumFireballs)


func _on_h_slider_value_changed(value):
	NumFireballs = value
	$SliderNum.text = str(NumFireballs)


#func _on_cast_button_pressed():
	
