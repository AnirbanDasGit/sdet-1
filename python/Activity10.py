tupleList = tuple(input("Enter your numbers: ").split(", "))
print("Entered numbers: ", tupleList)

print("Numbers that are divisible by 5: ")
for num in tupleList:
    if (num % 5 == 0):
        print(num)

