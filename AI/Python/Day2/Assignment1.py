#points = [(1,2),(2,3),(4,5),(6,7),(8,0)]

items = [3,5,8,2,10,7,18,13]
for i in range(len(items)):
    if items[i]%2==0:
        print(items[i] ,'is even')
    else:
        print(items[i], 'is odd')