num = 361527

circle = Math.sqrt(num).ceil / 2
sqrt = (circle * 2 + 1)**2
loop { sqrt -= (circle*2); break if sqrt < num }
p circle + (num - (sqrt + circle)).abs

# steps = 326