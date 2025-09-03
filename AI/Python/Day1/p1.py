print("hello")
l = [3,4,[5,6]]
m=tuple(l)

print(l[1],l[2])
l[2][0] = 8
l[1] =8

print(m , "conclusion - tuple are not completly invariate")
