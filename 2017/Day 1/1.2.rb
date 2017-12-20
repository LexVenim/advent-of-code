captcha = File.open("input.txt", "r"){ |file| file.read }
p captcha.split('').each_with_index.inject(0) { |sum, (n, i)| sum += n.to_i if n == captcha[(i + captcha.length / 2) % captcha.length]; sum } 

# sum is 1268