# Implement a function which returns the nth number in Fibonacci sequences with an input n.

# 1 2 3 4 5 6 7
# 1 + 2 + 3 + 5 + 7 + 9 + 11 + 13

def fib(n)
  arr = []
  if n == 1 || n == 2
    return 1
  end
  if n > 2
    return fib(n-1) + fib(n-2)
  end
end

p fib(7)



