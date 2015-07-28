
# this isn't working for some reason
# def to_roman(num)
#   str = ""
#   roman = {
#     1 => "I",
#     4 => "IV",
#     5 => "V",
#     9 => "IX",
#     10 => "X"
#   }
#   roman.each do |key, value|
#     str << value * (num/key)
#     num = num % key
#   end
#   return str
# end


def to_roman(num)
  output= ""
  roman={
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I",
  }
  roman.each do |key,value| #iterating through the hash
    output << value * (num/key) #shoveling the result of multiplying the values in the hash times the (arabic number given divided by the keys in the hash) ex) "" << "I" * (1/1) = "I" * 1 = "I"
    num= num % key # 1 = 1 remainder 0 = "I"
  end
  return output
end
# if num = 6
# "" << "I" * (6/1) = n/a
# "" << "V" * (6/5) = 1 r 1
# 6 = 6 % 5 = 1 r 1
# "VI"

# Driver code... this should print out trues.

puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"


# TODO: what other cases could you add to ensure your to_roman method is working?