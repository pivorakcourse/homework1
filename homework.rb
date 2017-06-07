VARIANT = 5

def generate

  # fastest finishing test
  result = ''
  2.times { result += rand(65..90).chr}
  result += '-'
  result += rand(1000000..9999999).to_s
  result += '-'
  3.times { result += rand(65..90).chr}
  result

  #solution in one line but slower in 100 times
  # ('AA'..'ZZ').to_a.sample + '-' + rand(1000000..9999999).to_s + '-' + ('AAA'..'ZZZ').to_a.sample
  
end