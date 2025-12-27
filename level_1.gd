extends Node2D


func check_if_correct():
	for slot in get_children():
		if not slot.correct_piece:
			return
	print("puzzle solved")
