VARIANT = 11
LETTERS_RANGE = 'A'..'Z'
NUMERICAL_RANGE = 0..9

def generate
  random_letters = ->(letters_quantity = 3) { (LETTERS_RANGE).to_a.sample(letters_quantity).join }
  random_number = ->(numbers_quantity = 3) { (NUMERICAL_RANGE).to_a.sample(numbers_quantity).join }

  "#{random_letters.call}-#{random_letters.call}-#{random_letters.call}-#{random_number.call}"
end
