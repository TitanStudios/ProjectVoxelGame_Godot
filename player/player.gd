extends Node2D

const RIGHT : int = 1
const LEFT : int = -1

var speed : int = 4


func _input(event):
	if event.is_action_pressed("mover_derecha"):
		position.x = position.x + speed
	if event.is_action_pressed("mover_izquierda"):
		position.x = position.x - speed


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if Input.is_action_pressed("mover_derecha"):
		position.x += speed
	if Input.is_action_pressed("mover_izquierda"):
		position.x -= speed
