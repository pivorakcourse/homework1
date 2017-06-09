VARIANT = 5

LETTER_START_POINT = 65
LETTER_END_POINT = 90
UPCASE_LETTERS_RANGE = 65..90
DIGITS_RANGE = 0..9

FIRST_PART_LENGTH = 2
SECOND_PART_LENGTH = 7
THIRD_PART_LENGTH = 3

# pattern = 'AC-1234567-ABC'



def generate
  first_part = ''
  FIRST_PART_LENGTH.times { first_part += rand(UPCASE_LETTERS_RANGE).chr}
  
  second_part = ''
  SECOND_PART_LENGTH.times { second_part += rand(DIGITS_RANGE).to_s}
  
  third_part = ''
  THIRD_PART_LENGTH.times { third_part += rand(UPCASE_LETTERS_RANGE).chr}
  result = "#{first_part}-#{second_part}-#{third_part}"
end

p generate
