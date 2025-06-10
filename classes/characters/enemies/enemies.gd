extends Characters
class_name Enemies

func perform_ai_attack(target: Characters):
	var atk = choose_attack()
	if atk != null:
		atk.use(self, target)
