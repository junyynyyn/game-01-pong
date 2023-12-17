extends Node2D

var P1Score = 0
var P2Score = 0

func _on_p_1_goal_body_entered(body):
	P1Score += 1
	$Ball.reset()

func _on_p_2_goal_body_entered(body):
	P2Score += 1
	$Ball.reset()
