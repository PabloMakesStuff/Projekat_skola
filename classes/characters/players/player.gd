extends Characters
class_name Players

func perform_attack(index: int, target: Characters):
	if index >= 0 and index < attacks.size():
		attacks[index].use(self, target)
	else:
		print("Invalid attack index!")
