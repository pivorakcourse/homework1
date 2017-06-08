VARIANT = 15

# It should fit this pattern "123456-ZXCE-ABCD"
def generate
  numbers = -> { rand(100_000..999_999).to_s }
  letters = -> { ('A'..'Z').to_a.sample(4).join }
  [numbers.call, letters.call, letters.call].join('-')
end
