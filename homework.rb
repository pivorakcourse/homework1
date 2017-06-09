VARIANT = 5


DIGITS_RANGE = 0..9
LETTERS_RANGE = 'A'..'Z'

FIRST_PART_LENGTH = 2
SECOND_PART_LENGTH = 7
THIRD_PART_LENGTH = 3

# pattern = 'AC-1234567-ABC'

def generate


  first_part = ->()  { (LETTERS_RANGE).to_a.sample(FIRST_PART_LENGTH).join }
  second_part = ->() { (DIGITS_RANGE).to_a.sample(SECOND_PART_LENGTH).join }
  third_part = ->() { (LETTERS_RANGE).to_a.sample(THIRD_PART_LENGTH).join }

  result = "#{first_part.call}-#{second_part.call}-#{third_part.call}"

end

