extends TextureRect


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
	preview_texture.size = Vector2(689/2, 680/2)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	
	set_drag_preview(preview)
	texture = null
	return data
	
func _can_drop_data(_pos, data):
	return typeof(data) == TYPE_DICTIONARY
func _drop_data(_pos, data):
	var target_texture = texture
	data["origin_node"].texture = target_texture
	texture =  data["origin_texture"]
