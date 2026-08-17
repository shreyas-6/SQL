1. Using input() function take one number from the user and using ternary operators check whether the number is even or odd

2. Using input function take two number and then swap the number

number = int(input("Enter a number: ")) # Take the number as input from the user

if number % 2 == 0:                # Use the ternary operator to check if the number is even or odd
    print("Even")
else:
    print("Odd")

OUTPUT:-

= RESTART: C:\Users\shrey\OneDrive\Desktop\example.py
Enter a number: 10
Even

============== RESTART: C:\Users\shrey\OneDrive\Desktop\example.py =============
Enter a number: 5
Odd




num1 = input("Enter the first number: ")  # Take the first number as input from the user
num2 = input("Enter the Second number: ") # Take the second number as input from the user

temp = num1
num1 = num2
num2 = temp

print("After swapping:")       # Display the swapping numbers 
print("First number =", num1)
print("Second number =", num2)

OUTPUT:-

============== RESTART: C:\Users\shrey\OneDrive\Desktop\example.py =============
Enter the first number: 30
Enter the Second number: 20
After swapping:
First number = 20
Second number = 30

