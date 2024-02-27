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

# The length of each session type (seconds)
var working_session_length : int = 1500
var short_break_session_length: int = 300 
var long_break_session_length: int = 600

func change_state(new_state: int) -> void:
	if new_state != _state:
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
	else:
		pass
	
	

func _process(delta: float):
	pass

func _on_play_pause_button_pressed():
	if _state != STATES.PAUSED:
		change_state(current_session_type)
		start()
	else:
		change_state(STATES.PAUSED)

func _on_working_session_button_pressed():
	if _state != STATES.WORKING_SESSION:
		current_session_type = STATES.WORKING_SESSION
		wait_time = working_session_length
	else:
		pass

func _on_short_break_session_button_pressed():
	if _state != STATES.SHORT_BREAK_SESSION:
		current_session_type = STATES.SHORT_BREAK_SESSION
		wait_time = short_break_session_length
	else:
		pass

func _on_long_break_session_button_pressed():
	if _state != STATES.LONG_BREAK_SESSION:
		current_session_type = STATES.LONG_BREAK_SESSION
		wait_time = long_break_session_length
	else:
		pass

func _on_reset_timer_button_pressed():
	match current_session_type:
		STATES.WORKING_SESSION:
			wait_time = working_session_length
		STATES.SHORT_BREAK_SESSION:
			wait_time = short_break_session_length
		STATES.LONG_BREAK_SESSION:
			wait_time = long_break_session_length
			
		
