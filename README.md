# Lab 6: Functions and Arrays - A Simple Guide

**Hello!** 👋 Welcome to Lab 6. This lab helps you practice **functions** and how to work with **arrays** (called vectors in C++) in the C++ programming language.

## What Are We Doing?

We're creating a small C++ program that can do 4 different things:
1. Reverse numbers in a list  
2. Calculate the factorial of a number  
3. Count even and odd numbers in a list  
4. Find the second largest number in a list
5. analyzing text (vowels and consonants)
6. adding two matrices.

## Important: What You'll Need to Do

❗ Each function file has a **TODO** comment. That's where you need to write your own code! The program won't work until you fill in those TODOs.

## Project Files - Here's What Each File Does

- `main.cpp` - The "boss" file that tells the program what to do  
- `reverse.cpp` - Contains the code to reverse numbers in a list  
- `factorial.cpp` - Contains the code to calculate factorials  
- `count_even_odd.cpp` - Contains the code to count even and odd numbers  
- `second_largest.cpp` - Contains the code to find the second largest number  
- `text_analyzer.cpp` - Contains the code to count vowels and consonants 
- `matrix_sum.cpp` - Contains the code to add two matrices
- `check.sh` - A helpful script that compiles and tests your code  

## How to Start - Step by Step

### First: Make the Script Executable
```bash
chmod +x check.sh
```

### Then: Auto-Test Your Code!
```bash
./check.sh
```

This script will automatically:
1. ✅ **Compile** all your .cpp files  
2. 🧪 **Run tests** on all functions  
3. 📊 **Count** how many tests you pass/fail  
4. 🎯 **Give you** a summary of results  
5. 👏 **Tell you** if you did great or need to keep working!  

### Want to Compile Yourself?
```bash
g++ -std=c++11 main.cpp reverse.cpp factorial.cpp count_even_odd.cpp second_largest.cpp text_analyzer.cpp matrix_sum.cpp -o main
```

## How to Use the Program

### Option 1: Auto-Test Everything!
Just run `./check.sh` - it will test ALL your functions automatically and tell you how many pass/fail!

### Option 2: Run Commands Directly
```bash
./main reverse "[1,2,3,4,5]"
./main factorial "5"
./main count_even_odd "[1,2,3,4,5,6]"
./main second_largest "[12,5,8,20,15]"
./main text_analyzer "hello"
```

## What Each Function Does

### 1. Reverse Array Function
**Command**: `./main reverse "[1,2,3,4,5]"`  

- **What it does**: Reverses the list of numbers  
- **Example**: `[1,2,3,4,5]` → `[5,4,3,2,1]`  
- **What you need to code**: A function that takes a vector and returns a reversed version  

### 2. Factorial Function
**Command**: `./main factorial "5"`  

- **What it does**: Calculates the factorial of a number  
- **Example**: `5! = 120`  
- **What you need to code**: A function that multiplies numbers from 1 up to N  

### 3. Count Even/Odd Function
**Command**: `./main count_even_odd "[1,2,3,4,5,6]"`  

- **What it does**: Counts how many even and odd numbers are in a list  
- **Example**: `[1,2,3,4,5,6]` → `Evens: 3, Odds: 3`  
- **What you need to code**: A function that loops through the vector and counts  

### 4. Second Largest Function
**Command**: `./main second_largest "[12,5,8,20,15]"`  

- **What it does**: Finds the second largest number  
- **Example**: In `[12,5,8,20,15]` → `15`  
- **What you need to code**: A function that checks for the largest and second largest values  



### 5. Text Analyzer Function 
**Command**: `./main text_analyzer "hello"`  

- **What it does**: Counts vowels and consonants in a string  
- **Example**: `"hello"` → `Vowels: 2, Consonants: 3`  
- **What you need to code**: A function that checks each character in the string  

### 6. Matrix Sum Function 
**Command**: `./main matrix_sum "[[1,2],[3,4]]" "[[5,6],[7,8]]"`  

- **What it does**: Adds two matrices  
- **Example**:  
  ```
  [[1,2],[3,4]] + [[5,6],[7,8]] 
  = [[6,8],[10,12]]
  ```  
- **What you need to code**: A function that adds element-by-element  

## Input Rules

- Write arrays like this: `[1,2,3,4]` (numbers separated by commas, inside square brackets)  
- Factorial input is just a single number (no brackets needed)  
- For optional tasks: You can use strings (text analyzer) or 2D arrays (matrix sum)  

## Tips for Success

- Look at each `.cpp` file - they already have the function names and what they should return  
- Start with the simpler functions like factorial  
- Test your functions as you code them  
- If something doesn’t work, check your syntax carefully  
- Remember: factorial(0) = 1, and empty arrays should be handled gracefully  

## Key C++ Concepts You'll Use

- **Functions**: Blocks of code that do specific jobs  
- **Vectors**: Like lists/arrays - they hold multiple values  
- **Loops**: For going through each item in a list or doing something repeatedly  
- **Return statements**: Send back results from your functions  
- **If statements**: Make decisions in your code  

Good luck with Lab 6! If you have questions, ask your instructor or TAs. Remember, programming is about learning and practicing - it’s okay if you make mistakes! 🚀

## Need Help?

If your code isn’t working:
1. Check if you have semicolons at the end of lines  
2. Make sure your braces `{ }` match up  
3. Try compiling with `./check.sh`  
4. For factorial: check edge cases like `0!`  
5. For reverse and second largest: make sure you handle empty or small arrays correctly  
6. For text analyzer: remember to count only alphabetic characters  
