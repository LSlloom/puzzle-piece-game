extends Area2D

@onready var sprite2d: Sprite2D = $Sprite2D
@onready var collishape: CollisionShape2D = $CollisionShape2D
var index = -1
var dragging = false
var cell_index = -1
var drag_offset = Vector2.ZERO
func init_piece(
	_index: int,
	texture: ImageTexture,
	pos: Vector2,
	piece_size: Vector2
):
	index = _index
	sprite2d.texture = texture
	position = pos
	collishape.shape.set("size", piece_size)
	


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
