extends Resource
class_name Attack

@export var name: String = "Attack"
@export var power: int = 10
@export var type: String = "normal"
@export var description: String = ""

func use(user, target):
	#if(type = "Fire"){}
	#if(type = "Electric") {}
	#else{
	var damage = calculate_damage(user, target)
	target.take_damage(damage)
	print("%s used %s and dealt %d damage!" % [user.name, name, damage])
	#}
func calculate_damage(user, target):
	return power + user.attack - target.defense
