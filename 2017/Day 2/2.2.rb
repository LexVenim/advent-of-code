p File.open("input.txt", "r").readlines.map{|line| line.split(" ").map{ |e| e.to_i }.combination(2).find { |a,b| a % b == 0 || b % a == 0 }.sort }.inject(0) { |sum, a| sum += a[1] / a[0]}

# sum = 263