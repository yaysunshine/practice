# is this valid?

# (a) {p a}["Hello world"]

a = ["Hello world"]
p a

# not sure what they're wanting to do with this code. I don't think it is valid. I gave a working solution to what I think they want to do.

# I was wrong. Has to do with procs and lambdas:

# The -> operator creates a new Proc, which is one of Ruby’s function types. (The -> is often called the “stabby proc”. It’s also called the “stabby lambda”, as it creates a new Proc instance that is a lambda. All lambdas are Procs, but not all Procs are lambdas. There are some slight differences between the two.)

# This particular Proc takes one parameter (namely, a). When the Proc is called, Ruby executes the block p a, which is the equivalent of puts(a.inspect) (a subtle, but useful, difference which is why p is sometimes better than puts for debugging). So this Proc simply prints out the string that is passed to it.

# You can call a Proc by using either the call method on Proc, or by using the square bracket syntax, so this line of code also invokes the Proc and passes it the string “Hello World”.

# So putting that all together, this line of code (a) creates a Proc that takes a single parameter a which it prints out and (b) invokes that Proc and passes it the string “Hello world”. So, in short, this line of code prints “Hello World”.