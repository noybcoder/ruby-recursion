# frozen_string_literal: true

# This method implements the merge sort algorithm to sort an array.
def merge_sort(arr)
  # Base case: An array of length 1 or less is already sorted.
  return arr if arr.length <= 1

  # Calculate the middle index of the array.
  l = 0
  r = arr.length - 1
  mid = l + (r - l) / 2

  # Recursively sort the left and right halves of the array.
  left_half = merge_sort(arr[0..mid])
  right_half = merge_sort(arr[mid + 1..r])
  # Merge the sorted halves and return the sorted array.
  combine_subarrays(left_half, right_half)
end

# This method combines two sorted subarrays into a single sorted array.
def combine_subarrays(left, right, output = [])
  # If either subarray is empty, concatenate the non-empty subarray to the output.
  return output.concat(left).concat(right) if left.empty? || right.empty?

  # Compare the first elements of each subarray and append the smaller one to the output.
  output << (left[0] < right[0] ? left.shift : right.shift)
  # Recursively combine the remaining elements of the subarrays.
  combine_subarrays(left, right, output)
end

# Example array to be sorted.
arr = [1, 3, 2, 4, 8, 9, 7, 5]
# Output the result of the merge sort on the example array.
p merge_sort(arr)
