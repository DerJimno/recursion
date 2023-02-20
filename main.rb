# Assignment 1 (Method to return an array of Fabonacci sequence)
# Part 1: using Loops
def fibs(num)
  fib = [0,1]
  return fib[0..num - 1] if num <= 2
  until num == 2
    fib << fib[-1] + fib[-2]
    num -= 1
  end
  fib
end
p fibs(5) # => [0, 1, 1, 2, 3]

# Part 2: using Recursion 
@fib = [0,1]
def fibs_rec(num)
  return @fib[0..num - 1] if num <= 2
  fibs_rec(num - 1)
  @fib << @fib[-1] + @fib[-2]
end
p fibs_rec(5)  # => [0, 1, 1, 2, 3]

# Assignment 2 ()