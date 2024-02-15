extends Node2D

var WorkingSessionTimeLeft = ceil($WorkingSessionTimer.get_time_left())

func _process(delta):
	$WorkingSessionTimerText.set_text(str(WorkingSessionTimeLeft))
	pass

func _on_working_session_start_button_pressed():
	print_debug("working session has started!")
	$WorkingSessionTimer.start()
	
func _on_working_session_timer_timeout():
	print_debug("working session has ended!")
