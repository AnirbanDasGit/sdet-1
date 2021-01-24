def sum(n):
    if n <= 1:
        return n
    else:
        return n + sum(n - 1)


num = sum(10)
print("The sum is: ", num)