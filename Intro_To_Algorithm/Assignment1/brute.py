# your code goes here
def solve(x, y):
	if y - x < 3:
		return y - x
	
	x += 1
	y -= 1
	dist = y - x
	n_moves = 2
	prev = 1
	
	while dist > 0:
		prev += 1
		if dist - prev <= 0:
			n_moves += 1
			dist -= prev
		else:
			n_moves += 2
			dist -= 2 * prev
	return n_moves
	
print(solve(int(input()), int(input())))