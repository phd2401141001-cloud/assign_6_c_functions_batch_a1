# Lab 7: Functions and Arrays - New Challenges

Welcome to **Lab 7** 🚀! This lab continues from Lab 6, giving you more practice with **functions** and **arrays (vectors)** in C++.

## Tasks

1. Reverse numbers in a list  
2. Calculate factorial of a number  
3. Count even and odd numbers in a list  
4. Find the second largest number  

### Optional (extra practice)
- Text Analyzer (count vowels and consonants)  
- Matrix Sum (add two matrices)  

## Commands

### Reverse Array
```bash
./main reverse "[1,2,3,4,5]"
```
Output: `[5,4,3,2,1]`

### Factorial
```bash
./main factorial "5"
```
Output: `120`

### Count Even/Odd
```bash
./main count_even_odd "[1,2,3,4,5,6]"
```
Output: `Evens: 3, Odds: 3`

### Second Largest
```bash
./main second_largest "[12,5,8,20,15]"
```
Output: `15`

### Text Analyzer (Optional)
```bash
./main text_analyzer "hello"
```
Output: `Vowels: 2, Consonants: 3`

## Compilation
```bash
g++ -std=c++11 main.cpp reverse.cpp factorial.cpp count_even_odd.cpp second_largest.cpp text_analyzer.cpp matrix_sum.cpp -o main
```

Or just run:
```bash
./check.sh
```