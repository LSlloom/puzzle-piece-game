extends TextureRect
@export var correct_id: String
@export var level_1_path: NodePath
@onready var level_1 = get_node(level_1_path)
@export var texture_rect_path: NodePath
@onready var texture_rect = get_node(texture_rect_path)


var correct_piece := false
func _ready():
	add_to_group("DRAGGABLE")
	
func _get_drag_data(at_position):
	
	var data = {
	"origin_node": self,
	"origin_texture": texture
}
	
	var preview_texture = TextureRect.new()
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(689/8, 680/8)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	
	set_drag_preview(preview)
	texture = null
	return data 
	
func _can_drop_data(_pos, data):
	return typeof(data) == TYPE_DICTIONARY and data["origin_node"] != self 
func _drop_data(_pos, data):
	var target_texture = texture
	data["origin_node"].texture = target_texture
	texture =  data["origin_texture"]
	if texture_rect.id == correct_id:
		correct_piece = true
	level_1.check_if_correct()
