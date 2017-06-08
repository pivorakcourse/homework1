VARIANT = 7

def generate
  # put your solution here (delete the line below)
  letters = []
 
  2.times do |i|
  	i = ('A'..'Z').to_a.sample(3).join
  	letters << i
  end
 
  letters[0] + '-' + rand(1000000..9999999).to_s + '-' + letters[1]

end
