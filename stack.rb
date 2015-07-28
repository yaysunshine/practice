# Refactor the stack.rb code so that a stack is created with a max_size.
# Implement a full? method
# Do not allow the stack to store more than it's max_size of elements.

class Stack
  def initialize
    @store = []
  end

  def push(x)
    @store.push x
  end

  def pop
    raise "Stack Underflow - The stack is empty" if self.empty?
    @store.pop
  end

  def peek
    @store.last
  end

  def empty?
    @store.empty?
  end

  def full?
    # if @store.length == @max_size
    #   return true
    # end
    if @store.length.between?(0, 4)
      return "not full"
    else
      return "full"
    end
  end
end

# create a new stack
my_stack=Stack.new;


# verify there are no elements on the new stack
puts "The stack is empty? #{my_stack.empty?}"

# add 3 elements to the stack
my_stack.push("ruby")
my_stack.push("is")
my_stack.push("cool")

# since our stack is implemented on array we can add any type of object
my_stack.push(15)

# look at all the elements in the stack by popping them off one at time

puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"
puts "Next Element: #{my_stack.pop}"

# verify there are no elements left on the stack
# puts "The stack is empty? #{my_stack.empty?}"

# what happens if you try to call pop on an empty stack?
# puts "Trying to remove an item from an empty stack ... "
# puts "Next Element: #{my_stack.pop}"

my_stack.push(4)

p my_stack.full?

my_stack.push("here")
my_stack.push("now")
my_stack.push(34)

p my_stack.full?

my_stack.push(3569438)
my_stack.push(349)
my_stack.push(3497)

p my_stack.full?