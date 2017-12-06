banks = IO.read("input.txt").split(" ").map {|b| b.to_i}

cycle = 0
history = {}
history[banks.dup] = 1

while (true) do
	cycle += 1
	mi = banks.index(banks.max)

	blocks, banks[mi] = banks[mi], 0
	blocks.times { |i| banks[(mi + i + 1) % banks.length] += 1}

	p cycle.to_s + ": " + banks.to_s

	break if history[banks]
	history[banks.dup] = 1
end

p cycle

# cycle = 11137