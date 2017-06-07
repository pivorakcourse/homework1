VARIANT = 3

def generate
  # put your solution here (delete the line below)
  digits = rand.to_s[2..5]
  random_chars + "-" + digits + "-" + random_chars
end

def random_chars
  ('A'..'Z').to_a.sample(4).join
end
