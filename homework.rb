VARIANT = 10 # 10 "123-ABC-987-ABC"

NUMS_RANGE = 1..9
CHAR_RANGE = 'A'..'Z'

def random_symbol(range)
  range.to_a.sample(1).join
end

def generate

  number = -> { random_symbol(NUMS_RANGE) }
  char = -> { random_symbol(CHAR_RANGE) }

  first = number.call + number.call + number.call
  second = char.call + char.call + char.call
  third = number.call + number.call + number.call
  fourth = char.call + char.call + char.call

  "#{first}-#{second}-#{third}-#{fourth}"
end
