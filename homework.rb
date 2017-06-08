VARIANT = 4

def generate
  #alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
  #alphabet[rand(26)]+alphabet[rand(26)]+rand(10...100).to_s+"-"+rand(1000...10000).to_s+"-"+alphabet[rand(26)]+  alphabet[rand(26)]+rand(10...100).to_s
  alphabet = ('A'..'Z').to_a
  alphabet_count = alphabet.count
  #alphabet[rand(alphabet_count)]+alphabet[rand(alphabet_count)]+rand(10...100).to_s+"-"+rand(1000...10000).to_s+"-"+alphabet[rand(alphabet_count)]+  alphabet[rand(alphabet_count)]+rand(10...100).to_s
  %Q(#{alphabet[rand(alphabet_count)]}#{alphabet[rand(alphabet_count)]}#{rand(10...100)}-#{rand(1000...10000)}-#{alphabet[rand(alphabet_count)]}#{alphabet[rand(alphabet_count)]}#{rand(10...100)})
end
