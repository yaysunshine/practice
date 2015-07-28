# Write a function that takes an integer in input and outputs a string with currency format.

# Integer in currency format is expressed by a string of number where every three characters are separated by comma.

# Ex. 123456 -> "123,456"

# Input will always be an positive integer, so don't worry about type checking or negative/float values.


def to_currency(number)
  # convert number to string in currency format
  # $ 30,000.00
  str = number.to_s
  str.each_slice(3) { |a| p a}
  p str
end

price = 123456
to_currency(price)
# Test.assert_equals(to_currency(price), "123,456")


  # str = number.to_s
  # a = []
  # str.split(//).reverse.each_slice(3) { |slice| a << slice }
  # p str
  # new_a = []
  # a.each do |item|
  #   new_a << item
  #   new_a << [","]
  # end
  # new_a.delete_at(new_a.length - 1)
  # new_a.flatten.reverse.join(" ")
  # p new_a