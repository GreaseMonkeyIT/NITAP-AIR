extends Spatial

onready var plane = $RigidBody2
onready var anim = $AnimationPlayer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():	
	anim.play("Start")


func _process(delta):
	if Input.is_action_pressed("Left"):
		plane.rotate_x(deg2rad(0.3))
	if Input.is_action_pressed("Right"):
		plane.rotate_x(deg2rad(-0.3))
	if Input.is_action_pressed("Front"):
		plane.rotate_z(deg2rad(0.3))
	if Input.is_action_pressed("Back"):
		plane.rotate_z(deg2rad(-0.3))
	
	
	anim.playback_speed = 2
		
