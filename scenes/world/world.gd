extends Node2D

signal add_score(points: float)
signal remove_score(points: float)

var score: float

func _on_add_score(points: float):
	score += points
	$Control/ScoreContainer/Label.text = str(score) + ' Cookies'


func _on_remove_score(points):
	score -= points
	$Control/ScoreContainer/Label.text = str(score) + ' Cookies'
