VARIANT = 13

def generate
  string = ('A'..'Z').to_a.sample(6).join('')
  first_numbers = (0..9).to_a.sample(6).join('')
  second_numbers = (0..9).to_a.sample(4).join('')

  string + '-' + first_numbers + '-' + second_numbers
end
