count = 0

File.open("input.txt").each_line do |line|
  passphrase = line.split(" ")
  count += 1 if passphrase.uniq.length == passphrase.length
end

p count

# count = 325