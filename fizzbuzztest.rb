# fizz buzz

def fizzbuzz(arr)
  arr.each_with_index do |num, index|
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      p num
    end
  end
end

fizzbuzz((1..100))


