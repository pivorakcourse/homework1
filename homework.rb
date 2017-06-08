VARIANT = 12
LETTERS_LENGTH = 6
NUM_PART1_LENGTH = 6
NUM_PART2_LENGTH = 2

def random_num_str(str_length)
  str = ''
  str_length.times { str += rand(0...10).to_s }
  str
end

def generate
  # pattern: "ABCDEF-123456-98"
  letters = ''
  LETTERS_LENGTH.times { letters += ('A'..'Z').to_a.sample }
  num1 = random_num_str(NUM_PART1_LENGTH)
  num2 = random_num_str(NUM_PART2_LENGTH)
  "#{letters}-#{num1}-#{num2}"
end
