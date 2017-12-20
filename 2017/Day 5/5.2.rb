maze = File.open("input.txt", "r").readlines.map{|n| n.to_i}

i = 0
step = 1.step do |s|
	now = maze[i]
	maze[i] >= 3 ? maze[i] -= 1 : maze[i] += 1
	next if now == 0
	i += now
	break s if i >= maze.length
end

p step

# step = 22570529
