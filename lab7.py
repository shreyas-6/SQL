#1. Write a Python program to sum all the items in a list.

num = [10, 20, 30, 40, 60]
total = 0
for i in num:
    total = total + i
print(total)

=============== RESTART: C:/Users/shrey/OneDrive/Desktop/lab7.py ===============
160

#2. Write a Python program to get the largest and smallest number from a list without builtin functions.

numbers = [25, 10, 45, 5, 60, 30]
largest = numbers[0]
smallest = numbers[0]

for num in numbers:
    if num > largest:
        largest = num
    if num < smallest:
        smallest = num
print("Largest number:", largest)
print("Smallest number:", smallest)

=============== RESTART: C:/Users/shrey/OneDrive/Desktop/lab7.py ===============
Largest number: 60
Smallest number: 5
