class_name SessionTimer
extends Timer

enum STATES {
	WORKING_SESSION, 
	SHORT_BREAK_SESSION,
	LONG_BREAK_SESSION,
	PAUSED
	}

var _state : int = STATES.PAUSED # Current state used by the state machine
var current_session_type : int = STATES.WORKING_SESSION

func change_state(new_state: int) -> void:
	var previous_state := _state
	_state = new_state
	
	# Initialize the new state.
	match _state:
		STATES.WORKING_SESSION:
			pass
		STATES.SHORT_BREAK_SESSION:
			pass
		STATES.LONG_BREAK_SESSION:
			pass
		STATES.PAUSED:
			pass
			
	# Clean up the previous state.
	match previous_state:
		STATES.WORKING_SESSION:
			pass
		STATES.SHORT_BREAK_SESSION:
			pass
		STATES.LONG_BREAK_SESSION:
			pass
		STATES.PAUSED:
			pass

func _process(delta: float):
	pass

func _on_play_pause_button_pressed():
	if _state != STATES.PAUSED:
		change_state(current_session_type)
	else:
		change_state(STATES.PAUSED)

func _on_working_session_button_pressed():
	if _state != STATES.WORKING_SESSION:
		current_session_type = STATES.WORKING_SESSION
	else:
		pass

func _on_short_break_session_button_pressed():
	if _state != STATES.SHORT_BREAK_SESSION:
		current_session_type = STATES.SHORT_BREAK_SESSION
	else:
		pass

func _on_long_break_session_button_pressed():
	if _state != STATES.LONG_BREAK_SESSION:
		current_session_type = STATES.LONG_BREAK_SESSION
	else:
		pass
