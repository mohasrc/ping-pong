extends RigidBody2D

@export var motion_vector: Vector2

var coll_info: KinematicCollision2D 

func _physics_process(delta: float) -> void:
	coll_info = move_and_collide(motion_vector)
	if coll_info:
		if coll_info.get_normal() == Vector2(1, 0) or coll_info.get_normal() == Vector2(-1, 0):
			motion_vector *= Vector2(-1, 1)
			print(coll_info.get_normal())

		if coll_info.get_normal() == Vector2(0, 1) or coll_info.get_normal() == Vector2(0, -1):
			motion_vector *= Vector2(1, -1)
			print(coll_info.get_normal())


func _process(delta: float) -> void:
	pass
