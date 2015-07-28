# Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:

# { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
# should result in:

# ["abc", "4567", "another_key"]

def length(h)
  str = h.keys
  make_sure_string = []
  str.each do |are_you|
    if are_you.is_a? String
      make_sure_string << are_you
    else
      make_sure_string << are_you.to_s
    end
  end
  return make_sure_string.sort_by { |word| word.length }
end


hashy = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
# p hashy.keys
p length(hashy)