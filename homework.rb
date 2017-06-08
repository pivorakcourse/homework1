VARIANT = 7
LETTERS_RANGE = 'A'..'Z'
NUMBERS_RAMGE = 1000000..9999999

def letters
  LETTERS_RANGE.to_a.sample(3).join
end

def numbers
  rand(NUMBERS_RAMGE).to_s
end

def generate
  "#{letters}-#{numbers}-#{letters}"
end
