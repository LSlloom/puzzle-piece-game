extends Node2D


@onready var button: Button = %Button
@onready var button_2: Button = %Button2
@onready var button_3: Button = %Button3
@onready var lvl_1_locked: ColorRect = $lvl1_locked
@onready var lvl_3_locked: ColorRect = $lvl3_locked
@onready var lvl_2_locked: ColorRect = $lvl2_locked



func _ready() -> void:
	button.grab_focus()
	
	if LevelCore.lvl1_completed == true:
		lvl_1_locked.visible = false
	if LevelCore.lvl1_completed == false:
		lvl_1_locked.visible = true
		
	if LevelCore.lvl2_completed == true:
		lvl_2_locked.visible = false
	if LevelCore.lvl2_completed == false:
		lvl_2_locked.visible = true
		
	if LevelCore.lvl3_completed == true:
		lvl_3_locked.visible = false
	if LevelCore.lvl3_completed == false:
		lvl_3_locked.visible = true

func _on_button_pressed() -> void:
	if LevelCore.lvl1_completed == false:
		get_tree().change_scene_to_file("res://level_1.tscn")
	else:
		get_tree().change_scene_to_file("res://level_1.tscn")

func _on_button_2_pressed() -> void:
	if LevelCore.lvl1_completed == false:
		null
	if LevelCore.lvl1_completed == true:
		get_tree().change_scene_to_file("res://level_2.tscn")



func _on_button_3_pressed() -> void:
	if LevelCore.lvl2_completed == false:
		null
	if LevelCore.lvl2_completed == true:
		get_tree().change_scene_to_file("res://level_3.tscn")
