extends Area2D

@onready var sprite2d: Sprite2D = $Sprite2D
@onready var collishape: CollisionShape2D = $CollisionShape2D
var index = -1

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
	
