extends Node2D

var P1Score = 0
var P2Score = 0

var WINNING_SCORE = 2

func _on_p_1_goal_body_entered(body):
	P2Score += 1
	$P2Score.text = str(P2Score)
	$Ball.reset()
	check_game()

func _on_p_2_goal_body_entered(body):
	P1Score += 1
	$P1Score.text = str(P1Score)
	$Ball.reset()
	check_game()

func check_game():
	if (P1Score >= WINNING_SCORE):
		$EndMenu/Label.text = "Player 1 Wins!"
		$EndMenu.show()
		$Ball.stopGame()
	elif (P2Score >= WINNING_SCORE):
		$EndMenu/Label.text = "Player 2 Wins!"
		$EndMenu.show()
		$Ball.stopGame()


func _on_start_button_pressed():
	$StartMenu.hide()
	$Ball.start()

func _on_quit_button_pressed():
	get_tree().quit()


func _on_button_pressed():
	$EndMenu.hide()
	P1Score = 0
	P2Score = 0
	$P1Score.text = str(P1Score)
	$P2Score.text = str(P2Score)
	
	$Ball.start()
