num = 361527

sqrt = Math.sqrt(num).ceil
sqrt +=1 if sqrt % 2 != 1


diff = (sqrt**2 - num) % (sqrt - 1)
diff = ((sqrt - 1) - diff) if diff > ((sqrt - 1) / 2)

res = (sqrt / 2).floor * 2 - diff

p res

# res = 326