#!/bin/bash

# Utility functions
print_test_result() {
    local test_name="$1"
    local passed="$2"
    local expected="$3"
    local actual="$4"

    if [ "$passed" = "true" ]; then
        echo "✓ $test_name PASSED"
    else
        echo "✗ $test_name FAILED"
        echo "  Expected: $expected"
        echo "  Got:      $actual"
    fi
}

capture_output() {
    local output_file="$1"
    shift
    "$@" > "$output_file" 2>&1
    echo "$output_file"
}

trim_whitespace() {
    echo "$1" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//'
}

# ---- Test functions ----

run_reverse_tests() {
    local test_count=0 pass_count=0

    echo "Running Reverse Tests..."
    echo "========================"

    test_count=$((test_count+1))
    output_file=$(capture_output "test_output.txt" ./main reverse "[1,2,3,4]")
    actual=$(trim_whitespace "$(cat $output_file)")
    expected="[4,3,2,1]"
    if [ "$actual" = "$expected" ]; then
        print_test_result "Reverse test" "true" "$expected" "$actual"
        pass_count=$((pass_count+1))
    else
        print_test_result "Reverse test" "false" "$expected" "$actual"
    fi

    echo ""
    echo "Reverse tests: $pass_count/$test_count passed"
    echo ""
    return $((test_count-pass_count))
}

run_factorial_tests() {
    local test_count=0 pass_count=0

    echo "Running Factorial Tests..."
    echo "=========================="

    test_count=$((test_count+1))
    output_file=$(capture_output "test_output.txt" ./main factorial "5")
    actual=$(trim_whitespace "$(cat $output_file)")
    expected="120"
    if [ "$actual" = "$expected" ]; then
        print_test_result "Factorial test (5!)" "true" "$expected" "$actual"
        pass_count=$((pass_count+1))
    else
        print_test_result "Factorial test (5!)" "false" "$expected" "$actual"
    fi

    echo ""
    echo "Factorial tests: $pass_count/$test_count passed"
    echo ""
    return $((test_count-pass_count))
}

run_count_even_odd_tests() {
    local test_count=0 pass_count=0

    echo "Running Count Even/Odd Tests..."
    echo "==============================="

    test_count=$((test_count+1))
    output_file=$(capture_output "test_output.txt" ./main count_even_odd "[1,2,3,4,5,6]")
    actual=$(trim_whitespace "$(cat $output_file)")
    expected="Evens: 3, Odds: 3"
    if [ "$actual" = "$expected" ]; then
        print_test_result "Count Even/Odd test" "true" "$expected" "$actual"
        pass_count=$((pass_count+1))
    else
        print_test_result "Count Even/Odd test" "false" "$expected" "$actual"
    fi

    echo ""
    echo "Count Even/Odd tests: $pass_count/$test_count passed"
    echo ""
    return $((test_count-pass_count))
}

run_second_largest_tests() {
    local test_count=0 pass_count=0

    echo "Running Second Largest Tests..."
    echo "==============================="

    test_count=$((test_count+1))
    output_file=$(capture_output "test_output.txt" ./main second_largest "[12,5,8,20,15]")
    actual=$(trim_whitespace "$(cat $output_file)")
    expected="15"
    if [ "$actual" = "$expected" ]; then
        print_test_result "Second Largest test" "true" "$expected" "$actual"
        pass_count=$((pass_count+1))
    else
        print_test_result "Second Largest test" "false" "$expected" "$actual"
    fi

    echo ""
    echo "Second Largest tests: $pass_count/$test_count passed"
    echo ""
    return $((test_count-pass_count))
}

run_text_analyzer_tests() {
    local test_count=0 pass_count=0

    echo "Running Text Analyzer Tests..."
    echo "=============================="

    test_count=$((test_count+1))
    output_file=$(capture_output "test_output.txt" ./main text_analyzer "hello")
    actual=$(trim_whitespace "$(cat $output_file)")
    expected="Vowels: 2, Consonants: 3"
    if [ "$actual" = "$expected" ]; then
        print_test_result "Text Analyzer test" "true" "$expected" "$actual"
        pass_count=$((pass_count+1))
    else
        print_test_result "Text Analyzer test" "false" "$expected" "$actual"
    fi

    echo ""
    echo "Text Analyzer tests: $pass_count/$test_count passed"
    echo ""
    return $((test_count-pass_count))
}

# ---- Main execution ----
echo "Lab 7 Functions and Arrays - Automatic Testing"
echo "=============================================="

# Compile program
echo "Compiling..."
g++ -std=c++11 main.cpp reverse.cpp factorial.cpp count_even_odd.cpp second_largest.cpp text_analyzer.cpp matrix_sum.cpp -o main

if [ $? -ne 0 ]; then
    echo "❌ Compilation failed!"
    exit 1
fi

echo "✓ Compilation successful!"
echo ""

# Run all test suites
total_tests=5
total_passed=0

run_reverse_tests; [ $? -eq 0 ] && total_passed=$((total_passed+1))
run_factorial_tests; [ $? -eq 0 ] && total_passed=$((total_passed+1))
run_count_even_odd_tests; [ $? -eq 0 ] && total_passed=$((total_passed+1))
run_second_largest_tests; [ $? -eq 0 ] && total_passed=$((total_passed+1))
run_text_analyzer_tests; [ $? -eq 0 ] && total_passed=$((total_passed+1))

# Final summary
echo "=========================================="
echo "TEST SUMMARY"
echo "=========================================="
echo "Total tests: $total_tests"
echo "Passed:      $total_passed"
echo "Failed:      $((total_tests-total_passed))"
echo ""

if [ $total_passed -eq $total_tests ]; then
    echo "🎉 All tests passed! Great work! 🎉"
else
    echo "💪 Keep working, you're close!"
fi

# Clean up
rm -f test_output.txt
