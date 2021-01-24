listItem = list(input("Please enter numbers: ").split(", "))
print("List is ", listItem)

firstElement = listItem[0]
lastElement = listItem[-1]

if (firstElement == lastElement):
    print(True)
else:
    print(False)