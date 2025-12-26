extends Node

var cells = []
var pieces = []
#maybe delete later
const images = [
	"res://paintings/1.jpg",
	"res://paintings/2.jpg",
	"res://paintings/3.jpg"
]
enum DIFFICULTY {
	EASY,
	MEDIUM,
	HARD
}

const DIFFICULTY_VALUES = {
	DIFFICULTY.EASY: 3,
	DIFFICULTY.MEDIUM: 4,
	DIFFICULTY.HARD: 5
}

var chosen_difficulty = DIFFICULTY.EASY
var grid_size = Vector2i(
	DIFFICULTY_VALUES[chosen_difficulty],
	DIFFICULTY_VALUES[chosen_difficulty]
	)

#maybe delete later
func get_image():
	var image = Image.load_from_file(images.pick_random())
	return image
