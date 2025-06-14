extends Node2D

@onready var battlefield_scend: PackedScene = preload("res://Scenes/Views/Battlefield/Battlefield.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(battlefield_scend)
