VARIANT = 7

def generate
  # put your solution here (delete the line below)
  result = []
  2.times do |letters|
    letters = ('A'..'Z').to_a.sample(3).join
    result << letters
  end
  numbers = rand(1000000..9999999).to_s
  result.insert(1, numbers)
  result.join('-')
end
