count = 0

File.open("input.txt").each_line do |line|
  passphrase = line.split(" ")
  splitted_passphrase = passphrase.map {|f| f.split("").sort }

  count += 1 if (passphrase.uniq.length == passphrase.length && splitted_passphrase.uniq.length == splitted_passphrase.length)
end

p count

# count = 119