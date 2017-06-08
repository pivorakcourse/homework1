VARIANT = 18
# pattern "AA21-ACBD-CD-VB-123AB"

def generate_literas(length)
  alphabet = ('A'..'Z').to_a
  alphabet.sample(length).join
end

def generate_digits(length)
  rand(0..999).to_s[0...length].rjust(length, '0')
end

def generate
  first_block = generate_literas(2) + generate_digits(2)
  second_block = generate_literas(4)
  third_block = generate_literas(2)
  fourth_block = generate_literas(2)
  fifth_block = generate_digits(3) + generate_literas(2)

  [first_block, second_block, third_block, fourth_block, fifth_block].join('-')
end
