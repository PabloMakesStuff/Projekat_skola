extends Resource
class_name Characters

@export var name: String = "NPC"
@export var max_hp: int = 100
@export var current_hp: int = 100
@export var status: String = ""
@export var defense: int = 5
@export var dexterity: int = 5

@export var attacks: Array[Attack] = []

func take_damage(amount: int):
	current_hp = max(current_hp - amount, 0)
	print("%s took %d damage!" % [name, amount])

func is_dead() -> bool:
	return current_hp <= 0

func choose_attack() -> Attack:
	# Random napad
	if attacks.size() == 0:
		return null
	return attacks[randi() % attacks.size()]
