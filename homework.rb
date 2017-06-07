VARIANT = 3

def generate
  # put your solution here (delete the line below)
  chars = ('A'..'Z').to_a.sample(4).join
  digits = rand.to_s[2..5]
  chars + "-" + digits + "-" + chars
end
