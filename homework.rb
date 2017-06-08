VARIANT = 19
ONE_DIGIT_NUMBER = 1..9
TWO_DIGIT_NUMBER = 10..99
THREE_DIGIT_NUMBER = 100..999

def alphabet(number_of_letters)
  ('a'..'z').to_a.sample(number_of_letters).join
end

def generate
  [
    rand(TWO_DIGIT_NUMBER),
    alphabet(2),
    rand(ONE_DIGIT_NUMBER),
    alphabet(4),
    rand(THREE_DIGIT_NUMBER),
    alphabet(2)
  ].join('-').upcase
end
