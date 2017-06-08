VARIANT = 18
#pattern "AA21-ACBD-CD-VB-123AB"

def gen_literas(length)
  alphabet = ('A'..'Z').to_a
  alphabet.sample(length).join
end

def gen_digits(length)
  if length == 2
  	rand(0..99).to_s.rjust(2, '0')
  elsif length == 3
  	rand(0..999).to_s.rjust(3, '0')
  end
end

def generate
  first_block = gen_literas(2) + gen_digits(2)
  second_block = gen_literas(4)
  third_block = gen_literas(2)
  fourth_block = gen_literas(2)
  fifth_block = gen_digits(3) + gen_literas(2)
  [first_block, second_block, third_block, fourth_block, fifth_block].join('-')
end
