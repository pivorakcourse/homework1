VARIANT = 1

def generate
  ch  = lambda { |range| (0...range).map { ('A'..'Z').to_a[rand(26)] }.join }
  num = lambda { |range| (0...range).map { rand(9) }.join }
  result_1  = "#{num.call(4)}-#{num.call(4)}-#{num.call(4)}"
end

generate

# result_10 = "#{ num.call(3)}-#{ch.call(3)}-#{num.call(3)}-#{ch.call(3) }"
# result_20 = "#{ num.call(2)}-#{num.call(1)}#{ch.call(4)}-#{num.call(5)}-#{ch.call(4)}#{num.call(2) }"
