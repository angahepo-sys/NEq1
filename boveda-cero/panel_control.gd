class_name PanelControl extends Control

@onready var lbl_salud: Label = $LblSalud
@onready var lbl_stamina: Label = $LblStamina

func actualizar_hud(salud: int, stamina: int) -> void:
	lbl_salud.text = "Salud: " + str(salud)
	lbl_stamina.text = "Stamina: " + str(stamina)
