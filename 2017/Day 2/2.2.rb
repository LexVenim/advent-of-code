sum = 0

File.open("input.txt").each_line do |line|
  l = line.split(" ").map{ |e| e.to_i }.sort.reverse

  l2 = l.clone
  l2.shift

  diff = nil
  l.each_with_index do |e1,i|
  	l2.each_with_index do |e2,j|
  		if e1 % e2 == 0 && i - j != 1
  			diff = e1 / e2
  			break
  		end
  	end
  	break if diff
  end

  sum += diff
end

p sum

# sum = 263