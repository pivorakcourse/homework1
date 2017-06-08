VARIANT = 19
ONE_DIGIT_NUMBER = 1..9
TWO_DIGIT_NUMBER = 10..99
THREE_DIGIT_NUMBER = 100..999
def generate
  [
    rand(TWO_DIGIT_NUMBER),
    ('a'..'z').to_a.sample(2).join,
    rand(ONE_DIGIT_NUMBER),
    ('a'..'z').to_a.sample(4).join,
    rand(THREE_DIGIT_NUMBER),
    ('a'..'z').to_a.sample(2).join
  ].join('-').upcase
end
