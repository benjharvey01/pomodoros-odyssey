extends Node2D
	
func _process(delta: float):
	$WorkingSessionTimerText.text = "%s" % ceil($WorkingSessionTimer.time_left)

func _on_working_session_timer_timeout():
	print_debug("working session complete!")
	
func _on_working_session_start_button_pressed():
	print_debug("working session started!")
	$WorkingSessionTimer.start()

func _on_working_session_pause_button_pressed():
	pause_timer($WorkingSessionTimer)
	
# Pauses / unpauses a given timer.
func pause_timer(Timer):
	Timer.paused = !Timer.paused



