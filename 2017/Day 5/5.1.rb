maze = []

File.open("input.txt").each_line {|l| maze.push l.to_i}

i = 0
step = 0

while i < maze.length do
	step += 1
	now = maze[i]

	maze[i] += 1
	next if now == 0

	i += now
end

p step

# step = 315613