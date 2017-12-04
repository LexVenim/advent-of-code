num = 361527

arr = {"0,0": 1, "1,0": 1}

sqrt = 3

direction = 0

x = 1
y = 0

answer = 0

while (true)
	new_spiral = false

	if (x == (sqrt/2).ceil) && (y == -((sqrt/2).ceil))
		sqrt += 2
		direction = 0
		x += 1
		new_spiral = true
	end

	if !new_spiral
		direction = (direction + 1) % 4 if (x.abs == (sqrt/2).ceil) && (y.abs == (sqrt/2).ceil)

		case direction
		when 0
			y += 1
		when 1
			x -= 1
		when 2
			y -= 1
		else
			x += 1
		end
	end

	sum = 0
	(-1..1).each do |i|
		(-1..1).each do |j|
			next if i == 0 && j == 0
			key = (x + i).to_s + ',' + (y + j).to_s
			sum += arr[key.to_sym] if arr[key.to_sym]
		end
	end

	arr[(x.to_s + ',' + y.to_s).to_sym] = sum

	if (sum > num)
		answer = sum
		break
	end

end

p answer

# answer = 363010