extends Control

var NumFireballs = 0

func _on_button_pressed():
	NumFireballs = randi_range(1,20)
	$Diceroll.text = str(NumFireballs)
