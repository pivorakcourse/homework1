VARIANT = 11

def generate
  # put your solution here (delete the line below)
  (1..3).map { ('A'..'Z').to_a.sample(3).join }.join('-') + '-' + (0..9).to_a.sample(3).join
end
