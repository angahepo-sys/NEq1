class_name CajaBebidas extends Area2D

@export var recarga_stamina: int = 30
var jugador_cerca: Node2D = null

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugadores") or body.name == "Negociador" or body.name == "Demoledor":
		jugador_cerca = body

func _on_body_exited(body: Node2D) -> void:
	if body == jugador_cerca:
		jugador_cerca = null

func _unhandled_input(event: InputEvent) -> void:
	if jugador_cerca and event.is_action_pressed("ui_accept"):
		var boveda = get_parent().get_node_or_null("BovedaRecursos")
		if boveda:
			boveda.recargar_stamina(recarga_stamina)
