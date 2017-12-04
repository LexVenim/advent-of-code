text = ""

File.open("input.txt").each_line do |line|
  text += line
end

text = text.split("")

l = text.length

sum = 0

text.each_with_index do |e,i|
	ci = i + (l/2)
	ci -= l if ci >= l
  sum += e.to_i if e == text[ci]
end

p sum

# sum is 1268