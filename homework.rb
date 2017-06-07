VARIANT = 6

def generate
  rand(10..99).to_s + '-' + rand(1000000..9999999).to_s + '-' + [*"A".."Z"].sample(3).join
end
