VARIANT = 8

def generate
  letters = *("A".."Z")

  letter = -> { letters.sample(3).join }
  number = -> { rand(100..999).to_s }

  [letter.call, number.call, letter.call, number.call].join("-")
end


