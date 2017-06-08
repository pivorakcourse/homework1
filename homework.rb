VARIANT = 4

def generate

  alphabet = ('AA'..'ZZ').to_a
  alphabet_count = alphabet.count

  first_block = "#{alphabet[rand(alphabet_count)]}#{rand(10...100)}"
  second_block = "#{rand(1000...10000)}"
  third_block = "#{alphabet[rand(alphabet_count)]}#{rand(10...100)}"

  "#{first_block}-#{second_block}-#{third_block}"
end
