VARIANT = 9

def generate
  first_random_numbers = Array.new(3) { rand(1...9) }.join('')
  second_random_numbers = Array.new(3) { rand(1...9) }.join('')

  letters_array = ('A'..'Z').to_a.flatten
  first_random_letters = Array.new(3) { letters_array[rand(letters_array.length)] }.join('')
  second_random_letters = Array.new(3) { letters_array[rand(letters_array.length)] }.join('')

  "#{first_random_numbers}" + "-" + "#{first_random_letters}" + "-" + "#{second_random_letters}" + "-" + "#{second_random_numbers}"
end
