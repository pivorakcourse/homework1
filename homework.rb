VARIANT = 16
ALPHABET = ("A".."Z").to_a
NUM_BLOCK_LENGTH = 5
LETTER_BLOCK_LENGTH = 4

def rand_letters_block
  letters_block = Array.new
  LETTER_BLOCK_LENGTH.times{ letters_block << ALPHABET[rand(ALPHABET.length)] }
  letters_block.join
end

def rand_numbers_block
  numbers_block = Array.new
  NUM_BLOCK_LENGTH.times{ numbers_block << rand(0..9) }
  numbers_block.join
end

def generate
  "#{rand_letters_block}-#{rand_letters_block}-#{rand_numbers_block}-#{rand_numbers_block}"
end
