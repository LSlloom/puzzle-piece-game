extends Node2D

@onready var CanvasLayer_node = get_node("../CanvasLayer")

func _ready() -> void:
	CanvasLayer_node.visible = false
		

func check_if_correct():
	for slot in get_children():
		if not slot.correct_piece:
			return
	print("puzzle solved")
	CanvasLayer_node.visible = true
	LevelCore.lvl1_completed = true


func _on_done_pressed() -> void:
	get_tree().change_scene_to_file("res://level_select.tscn")
