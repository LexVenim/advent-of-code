num = 361527

arr = {"0,0": 1}

answer = 1.step do |n|
	next if n == 1
	circle = Math.sqrt(n).ceil / 2
	side_border = (circle*2 - 1)**2

	side = 1.step { |i| side_border += circle*2; break i if side_border >= n }
	x,y = circle, circle - (side_border - n)
	x = -x if side > 2
	y = -y if side.between?(2,3)
	x,y = y,x if side.even?

	res = arr[(x.to_s + ',' + y.to_s).to_sym] = [x.pred, x, x.next].product([y.pred, y, y.next]).inject(0) { |sum, (ax, ay)| key = ax.to_s + ',' + ay.to_s; sum += arr[key.to_sym] if arr[key.to_sym]; sum }

	break res if res > num
end

p answer
# answer = 363010