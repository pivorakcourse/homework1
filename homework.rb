VARIANT = 2

def generate
  "#{digits}-#{letters}-#{digits}"
end

def digits
  rand(1000..9999).to_s
end

def letters
  letters, number_of_leters, random_letters = ("A".."Z").to_a, 4, ""

  number_of_leters.times {
    random_letters += letters[rand(letters.length)]
  }
	
  random_letters
end