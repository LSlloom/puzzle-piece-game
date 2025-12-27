extends Node2D

@onready var CanvasLayer_node = get_node("../CanvasLayer")

func _ready() -> void:
	CanvasLayer_node.visible = false
		
pass

func check_if_correct():
	for slot in get_children():
		if not slot.correct_piece:
			return
	print("puzzle solved")
	#CanvasLayer_node.visible = true
	#maybe make button for next line
	get_tree().change_scene_to_file("res://level_select.tscn")
