class_name Pinchos extends Area2D

@export var dano: int = 15

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body is Ladron:
		body.recibir_dano(dano)
