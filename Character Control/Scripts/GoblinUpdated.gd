extends KinematicBody2D



var speed = 120
var motion = Vector2()
var gravity = 400

var direction = 1 #1 = right -1 = left


func _physics_process(delta):
	motion.y += gravity
	motion.x += speed * direction
	if is_on_wall():
		direction = direction * -1
	motion = move_and_slide(motion)

func _ready():
	$AnimationPlayer.play("Run")

func _on_Area2D_body_entered(body):
	print(body)
	if body.is_in_group("Player"):
		print("player dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position
