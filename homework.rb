VARIANT = 9

def random_things(args)
  letters_array = ('A'..'Z').to_a.flatten
  
  if args == :numbers
    Array.new(3) { rand(1...9) }.join('')
  elsif args == :letters
    Array.new(3) { letters_array[rand(letters_array.length)] }.join('')
  else
    raise 'Unknown things!'
  end
end

def generate
  "#{random_things(:numbers)}-#{random_things(:letters)}-#{random_things(:letters)}-#{random_things(:numbers)}"
end
