extends Node2D

@onready var tilemap = $TileMap

const WIDTH = 50
const HEIGHT = 20

func _ready():
    generate_world()

func generate_world():
    for x in range(WIDTH):
        for y in range(HEIGHT):
            if y > HEIGHT / 2:
                tilemap.set_cell(0, Vector2i(x, y), 0)
