extends Collectable

@onready var resourse_manager = $"../ResourseManager"
@onready var ui = $"../MainCharacter/UI"
#@onready var npc = $"../Npc"

func _on_body_entered(body):
	if body.name == "MainCharacter" and npc.activated == true:
		super(body)
		resourse_manager.add_stone()
		update_stone_label()

func update_stone_label():
	ui.update_stone_value_label(resourse_manager.stone)
