VARIANT = 10
# 10 "123-ABC-987-ABC"

def generate
  letter = ("A".."Z").to_a

  letters = -> { letter.sample(3).join }
  numbers = -> { rand(100..999).to_s }

  [numbers.call, letters.call, numbers.call, letters.call].join("-")
end