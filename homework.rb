VARIANT = 1


def random_4_numbers 
      rand(1000..10000)
end

def generate 
  first_random_four_numbers = random_4_numbers
  second_random_four_numbers = random_4_numbers
  third_random_four_numbers = random_4_numbers

  "#{first_random_four_numbers}-#{second_random_four_numbers}-#{third_random_four_numbers}"
end
