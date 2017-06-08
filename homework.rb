VARIANT = 1

def generate
  ch  = lambda { |range| (0...range).map { ('A'..'Z').to_a[rand(26)] }.join }
  num = lambda { |range| (0...range).map { rand(9) }.join }
  result = "#{num.call(4)}-#{num.call(4)}-#{num.call(4)}"
end

generate
