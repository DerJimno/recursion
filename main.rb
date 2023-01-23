# Assignment 1 (Method to return an array of Fabonacci sequence)
# Part 1: using Iterators/Loops
def fibs(num)
  fib = [0,1]
  return [0] if num == 0
  return [0,1] if num == 1
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
  return [0] if num == 0
  return [0,1] if num == 1
  return @fib if num == 2
  @fib << @fib[-1] + @fib[-2]
  fibs_rec(num - 1)
end
p fibs_rec(5)  # => [0, 1, 1, 2, 3]

# Assignment 2 ()