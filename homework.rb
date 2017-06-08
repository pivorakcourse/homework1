VARIANT = 10
# 10 "123-ABC-987-ABC"

def generate
  # letter = ("A".."Z").to_a

  # letters = -> { letter.sample(3).join }
  # numbers = -> { rand(100..999).to_s }

  # [numbers.call, letters.call, numbers.call, letters.call].join("-")



  letter = ("A".."Z").to_a

  letters = lambda { |x| letter.sample(x).join }
  number = lambda { rand(1..9).to_s }

  number.call+number.call+number.call+"-"+letters.call(3)+"-"+number.call+number.call+number.call+"-"+letters.call(3)
end