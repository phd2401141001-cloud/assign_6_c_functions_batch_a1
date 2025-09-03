#include <iostream>
#include <vector>
#include <string>
#include <sstream>

// Forward declarations
std::vector<int> reverseArray(const std::vector<int>& nums);
int factorial(int n);
std::pair<int,int> countEvenOdd(const std::vector<int>& nums);
int secondLargest(const std::vector<int>& nums);
std::pair<int,int> analyzeText(const std::string& text);
std::vector<std::vector<int>> addMatrices(const std::vector<std::vector<int>>& A,
                                          const std::vector<std::vector<int>>& B);

// Helper: parse vector from string input "[1,2,3]"
std::vector<int> parseVector(const std::string& str) {
    std::vector<int> nums;
    std::string s = str.substr(1, str.size() - 2); // remove [ ]
    std::stringstream ss(s);
    int num;
    char comma;
    while (ss >> num) {
        nums.push_back(num);
        ss >> comma; // consume comma
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
