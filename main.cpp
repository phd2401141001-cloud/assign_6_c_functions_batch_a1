#include <iostream>
#include <vector>
#include <string>
#include <sstream>

#include "reverse.cpp"
#include "factorial.cpp"
#include "count_even_odd.cpp"
#include "second_largest.cpp"
#include "text_analyzer.cpp"
#include "matrix_sum.cpp"

std::vector<int> parseVector(const std::string& str) {
    std::vector<int> nums;
    std::string s = str.substr(1, str.size() - 2);
    std::stringstream ss(s);
    int num;
    char comma;
    while (ss >> num) {
        nums.push_back(num);
        ss >> comma;
    }
    return nums;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cout << "Please provide a function name!" << std::endl;
        return 1;
    }

    std::string command = argv[1];

    if (command == "reverse") {
        std::vector<int> arr = parseVector(argv[2]);
        auto res = reverseArray(arr);
        std::cout << "[";
        for (size_t i = 0; i < res.size(); i++) {
            std::cout << res[i];
            if (i < res.size() - 1) std::cout << ",";
        }
        std::cout << "]" << std::endl;

    } else if (command == "factorial") {
        int n = std::stoi(argv[2]);
        std::cout << factorial(n) << std::endl;

    } else if (command == "count_even_odd") {
        std::vector<int> arr = parseVector(argv[2]);
        auto result = countEvenOdd(arr);
        std::cout << "Evens: " << result.first << ", Odds: " << result.second << std::endl;

    } else if (command == "second_largest") {
        std::vector<int> arr = parseVector(argv[2]);
        std::cout << secondLargest(arr) << std::endl;

    } else if (command == "text_analyzer") {
        std::string text = argv[2];
        auto result = analyzeText(text);
        std::cout << "Vowels: " << result.first << ", Consonants: " << result.second << std::endl;

    } else {
        std::cout << "Unknown command!" << std::endl;
    }

    return 0;
}