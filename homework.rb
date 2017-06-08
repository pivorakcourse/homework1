VARIANT = 7

def generate
  # put your solution here (delete the line below)
  letters = []
  2.times do |letter|
    letter = ('A'..'Z').to_a.sample(3).join
    letters << letter
  end
  numbers = rand(1000000..9999999).to_s
  letters[0] + '-' + numbers + '-' + letters[1]
end
