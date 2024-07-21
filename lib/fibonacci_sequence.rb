# frozen_string_literal: true

# This method generates a Fibonacci sequence up to the given number using iteration.
def fibs(number)
  # Reduce is used to accumulate values in an array. Starting with [0, 1],
  # it adds the sum of the last two elements to the sequence for each iteration.
  (2...number).reduce([0, 1]) do |sequence|
    sequence << sequence[-2] + sequence[-1]
  end
end

# This method generates a Fibonacci sequence up to the given number using recursion.
def fibs_rec(number)
  # Base case: If the number is 2, return the initial Fibonacci sequence [0, 1].
  return [0, 1] if number == 2

  # Recursive case: Call the method with (number - 1) to build the sequence up to the desired length.
  sequence = fibs_rec(number - 1)
  # Append the sum of the last two elements to the sequence.
  sequence << sequence[-2] + sequence[-1]
end

# Print the results of the iterative Fibonacci sequence for 8 elements.
puts "Results from iterative fibonacci sequence: #{fibs(8)}"
# Print the results of the recursive Fibonacci sequence for 8 elements.
puts "Results from recursive fibonacci sequence: #{fibs_rec(8)}"
