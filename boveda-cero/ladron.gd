class_name Ladron extends CharacterBody2D

@export var nombre: String = "Ladrón Base"
@export var rol: String = "Base"
@export var velocidad: float = 110.0
@export var salud: int = 100

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction != 0:
		velocity.x = direction * velocidad
	else:
		velocity.x = move_toward(velocity.x, 0, velocidad)

	velocity.y = 0.0
	move_and_slide()

func recibir_dano(cantidad: int) -> void:
	salud -= cantidad
	if salud <= 0:
		salud = 0
