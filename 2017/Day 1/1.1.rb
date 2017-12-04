text = ""

File.open("input.txt").each_line do |line|
	text += line
end

text = text.split("")

arr1 = text.clone
last = arr1.pop

arr2 = text.clone
first = arr2.shift

sum = 0

arr1.each_with_index do |e,i|
	sum += e.to_i if e == arr2[i]
end

sum += first.to_i if first == last

p sum 

# sum is 1069