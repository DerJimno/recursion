# Assignment 1
def fib(n)
  return 0 if n.zero?
  n == 1 ? 1 : fib(n - 2) + fib(n - 1)
end

# p fib(7)