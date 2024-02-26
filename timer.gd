class_name SessionTimer
extends Timer

enum States {
	PLAYING_WORKING_SESSION, 
	PLAYING_SHORT_BREAK_SESSION,
	PLAYING_LONG_BREAK_SESSION,
	PAUSED
	}
	
var _state : int = States.PAUSED

func _process(delta: float):
	pass

