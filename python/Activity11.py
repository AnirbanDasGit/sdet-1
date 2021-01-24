fruits = {
    "Apple": 140,
    "Banana": 60,
    "Grapes": 100,
    "Strawberry": 200
    "Kiwi": 20
}

fruitCheck = input("Please enter a fruit name to search from the dictionary: ")

if (fruitCheck in fruits):
    print(fruitCheck," is available")
else:
    print(fruitCheck,"is not available")