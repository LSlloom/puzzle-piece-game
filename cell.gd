extends Area2D

@onready var sprite2d: Sprite2D = $Sprite2D
@onready var collishape: CollisionShape2D = $CollisionShape2D
var index = -1


func init_cell(
	_index: int,
	piece_size: Vector2
):
	index = _index

	sprite2d.texture.set("width", piece_size.x)
	sprite2d.scale = Vector2(1, piece_size.y)

	collishape.shape.set("size", piece_size)
