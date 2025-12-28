extends Node2D


@onready var button: Button = %Button
@onready var button_2: Button = %Button2
@onready var button_3: Button = %Button3
@onready var button_4: Button = %Button4
@onready var button_5: Button = %Button5
@onready var button_6: Button = %Button6
@onready var lvl_1_locked: ColorRect = $lvl1_locked
@onready var lvl_3_locked: ColorRect = $lvl3_locked
@onready var lvl_2_locked: ColorRect = $lvl2_locked
@onready var lvl_5_locked: ColorRect = $lvl5_locked
@onready var lvl_6_locked: ColorRect = $lvl6_locked
@onready var lvl_4_locked: ColorRect = $lvl4_locked
@onready var lock_2: Sprite2D = $lock2
@onready var lock_3: Sprite2D = $lock3
@onready var lock_5: Sprite2D = $lock5
@onready var lock_6: Sprite2D = $lock6
@onready var lock_4: Sprite2D = $lock4


func _ready() -> void:
	button.grab_focus()
	
	if LevelCore.lvl1_completed == true:
		lvl_1_locked.visible = false
		lock_2.visible = false
	if LevelCore.lvl1_completed == false:
		lvl_1_locked.visible = true
		lock_2.visible = true
		
	if LevelCore.lvl2_completed == true:
		lvl_2_locked.visible = false
		lock_3.visible = false
	if LevelCore.lvl2_completed == false:
		lvl_2_locked.visible = true
		lock_3.visible = true
	
	if LevelCore.lvl3_completed == true:
		lvl_3_locked.visible = false
		lock_4.visible = false
	if LevelCore.lvl3_completed == false:
		lock_4.visible = true
		lvl_3_locked.visible = true
		
	if LevelCore.lvl4_completed == true:
		lvl_4_locked.visible = false
		lock_3.visible = false
	if LevelCore.lvl4_completed == false:
		lvl_4_locked.visible = true
		lock_3.visible = true
		
	if LevelCore.lvl5_completed == true:
		lvl_5_locked.visible = false
		lock_4.visible = false
	if LevelCore.lvl5_completed == false:
		lvl_5_locked.visible = true
		lock_4.visible = true
		
	if LevelCore.lvl6_completed == true:
		lvl_6_locked.visible = false
		lock_5.visible = false
	if LevelCore.lvl6_completed == false:
		lvl_6_locked.visible = true
		lock_5.visible = true
		
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


func _on_button_4_pressed() -> void:
	if LevelCore.lvl3_completed == false:
		null
	if LevelCore.lvl3_completed == true:
		get_tree().change_scene_to_file("res://level_4.tscn")


func _on_button_5_pressed() -> void:
	if LevelCore.lvl4_completed == false:
		null
	if LevelCore.lvl4_completed == true:
		get_tree().change_scene_to_file("res://level_5.tscn")



func _on_button_6_pressed() -> void:
	if LevelCore.lvl5_completed == false:
		null
	if LevelCore.lvl5_completed == true:
		get_tree().change_scene_to_file("res://level_5.tscn")
