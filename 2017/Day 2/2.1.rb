sum = 0

File.open("input.txt").each_line do |line|
  diff = line.split(" ").map{ |e| e.to_i }.reduce({min: 10000, max: 0}) do |s,e|
  	s[:min] = e if e < s[:min]
  	s[:max] = e if e > s[:max]
  	s
  end
  sum += diff[:max] - diff[:min]
end

p sum

# sum = 37923