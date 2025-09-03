#include <iostream>
#include <string>

std::pair<int,int> analyzeText(const std::string& text) {
    // TODO: Count vowels and consonants
    return {0,0}; // Placeholder
}



// #include <iostream>
// #include <string>
// #include <cctype>

// std::pair<int,int> analyzeText(const std::string& text) {
//     int vowels = 0, consonants = 0;
//     for (char ch : text) {
//         if (std::isalpha(ch)) {
//             char c = std::tolower(ch);
//             if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
//                 vowels++;
//             else
//                 consonants++;
//         }
//     }
//     return {vowels, consonants};
// }
