class_name BovedaRecursos extends Node2D

@export var stamina_disponible: int = 100

func obtener_stamina() -> int:
	return stamina_disponible

func recargar_stamina(cantidad: int) -> void:
	stamina_disponible = clamp(stamina_disponible + cantidad, 0, 100)

func consumir_stamina(cantidad: int) -> bool:
	if stamina_disponible >= cantidad:
		stamina_disponible -= cantidad
		return true
	return false
