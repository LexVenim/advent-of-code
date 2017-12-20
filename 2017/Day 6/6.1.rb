banks = IO.read("input.txt").split(" ").map {|b| b.to_i}

history = {}
history[banks.dup] = 1

cycle = 1.step do |c|
	mi = banks.index(banks.max)

	blocks, banks[mi] = banks[mi], 0
	blocks.times { |i| banks[(mi + i + 1) % banks.length] += 1}

	break c if history[banks]
	history[banks.dup] = c
end

p cycle

# cycle = 11137