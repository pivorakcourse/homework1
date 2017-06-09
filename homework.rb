VARIANT       = 15
NUM_RANGE     = 1..999_999
NUM_LENGTH    = 6
LEADING_ZEROS = '0'.freeze
CHAR_RANGE    = 'AA'..'ZZ'
CHAR_LENGTH   = 2

# It should fit this pattern "123456-ZXCE-ABCD"
def generate
  numbers = -> { rand(NUM_RANGE).to_s.rjust(NUM_LENGTH, LEADING_ZEROS) }
  letters = -> { CHAR_RANGE.to_a.sample(CHAR_LENGTH).join }

  [numbers, letters, letters].map(&:call).join('-')
end
