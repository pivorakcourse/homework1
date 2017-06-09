VARIANT     = 15
NUM_RANGE   = 1..999_999
CHAR_RANGE  = 'AA'..'ZZ'

# It should fit this pattern "123456-ZXCE-ABCD"
def generate
  numbers = -> { rand(NUM_RANGE).to_s.rjust(6, '0') }
  letters = -> { CHAR_RANGE.to_a.sample(2).join }

  [numbers.call, letters.call, letters.call].join('-')
end
