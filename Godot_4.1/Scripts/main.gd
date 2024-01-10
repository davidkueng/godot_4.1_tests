extends Node2D

var Player

# Called when the node enters the scene tree for the first time.
func _ready():
	Player = ResourceLoader.load("res://Scenes/player.tscn").instantiate()
	get_node("back_ground_canvas").add_child(Player)
	#self.add_child(Player)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
