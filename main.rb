# Assignment 1 (Method to return an array of Fabonacci sequence)
# Part 1: using Loops
def fibs(num)
  fib = [0,1]
  return fib[0..num - 1] if num <= 2
  (num-2).times {fib << fib[-1] + fib[-2]}
  fib
end
p fibs(5) # =>[0, 1, 1, 2, 3]

# Part 2: using Recursion
@fib = [0,1]
def fibs_rec(num)
  return @fib[0..num - 1] if num <= 2
  fibs_rec(num - 1)
  @fib << @fib[-1] + @fib[-2]
end
p fibs_rec(5)  # => [0, 1, 1, 2, 3]

# Assignment 2 (Merge sort - A sorting Algorithm that uses Recursion{devide&conquer})
def merge_sort(array, lowest = [])
  return array if array.length < 2 # Base-case

  left = merge_sort(array.shift(array.length/2)) # Left-part of array on each recursion
  right = merge_sort(array) # Right-part...

  until left.empty? || right.empty?
    left.first <= right.first ? lowest << left.shift : lowest << right.shift # get lowest
  end
  lowest + left + right
end
p merge_sort([100, 2, 90, 1, 9, 12 ,3, 7, 5]) # =>[1, 2, 3, 5, 7, 9, 12, 90, 100]