VARIANT = 16
ALPHABET = ("A".."Z").to_a

def rand_letters_block
  letters_block = Array.new
  4.times do letters_block << ALPHABET[rand(ALPHABET.length)]
  end
  letters_block.join
end

def rand_numbers_block
  numbers_block = Array.new
  5.times do numbers_block << rand(0..9)
  end
  numbers_block.join
end

def generate
  rand_letters_block + '-' + rand_letters_block + '-' + rand_numbers_block + '-' + rand_numbers_block
end
