p File.open("input.txt", "r").readlines.map{|line| line.split(" ").map{ |e| e.to_i }.minmax}.inject(0) { |sum, a| sum += a[1] - a[0]}

# sum = 37923