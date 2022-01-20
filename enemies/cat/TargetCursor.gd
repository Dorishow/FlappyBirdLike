extends Node2D

var targetToLook = Vector2()

func _physics_process(delta): look_at(targetToLook)

func updateTarget(coordinate): targetToLook = coordinate
