VARIANT = 4

def generate

  alphabet = ('A'..'Z').to_a
  alphabet_count = alphabet.count

  "#{alphabet[rand(alphabet_count)]}#{alphabet[rand(alphabet_count)]}#{rand(10...100)}-"\
  "#{rand(1000...10000)}-#{alphabet[rand(alphabet_count)]}#{alphabet[rand(alphabet_count)]}#{rand(10...100)}"
end
