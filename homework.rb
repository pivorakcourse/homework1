VARIANT = 12
NUM_OF_LETTERS = 6
NUM_OF_DIGITS = 8
DIGITS_SPLIT_PLACE = 6

def generate
  # pattern: "ABCDEF-123456-98"
  # chunk of additional code to add (hopefully) more functionality:
  temp_str = ''
  NUM_OF_DIGITS.times { temp_str += rand(0...10).to_s }
  # the main code:
  ('a'..'z').to_a.sample(NUM_OF_LETTERS).join.upcase + '-' +
                temp_str.slice(0...DIGITS_SPLIT_PLACE) + '-' +
                  temp_str.slice(DIGITS_SPLIT_PLACE...NUM_OF_DIGITS)
end
