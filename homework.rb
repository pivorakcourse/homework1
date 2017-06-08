VARIANT = 9

def generate
  random_numbers = Array.new(3) { rand(1...9) }.join('')

  letters_array = ('A'..'Z').to_a.flatten
  random_letters = Array.new(3) { letters_array[rand(letters_array.length)] }.join('')

  "#{random_numbers}" + "-" + "#{random_letters}" + "-" + "#{random_letters}" + "-" + "#{random_numbers}"
end
