# Write a single line of Ruby code that prints the Fibonacci sequence of any length as an array.

# (Hint: use inject)

def fibon(n)
  # return 1 if n == 1 || n == 2
  # return fib(n-1) + fib(n-2) if n > 2
  # (5..10).inject { |sum, n| sum + n }
  (1..10).inject( [0, 1] ) { |fib| fib << fib.last(2).inject(:+) }
  # inject(initial) { |obj| block }
  # .inject(:+) || .reduce(:+) --> add together

  # (1..20).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
end

p fibon(10)