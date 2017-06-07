VARIANT = 8

def generate
  letters = *("A".."Z")

  letter1, letter2 = 2.times.map { letters.sample(3).join }
  num1, num2 = 2.times.map { rand(100..999).to_s }

  [letter1, num1, letter2, num2].join("-")
end
