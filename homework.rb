VARIANT = 1

def generate 

  def random_12_numbers 
      return rand(1000..10000)
  end


  first_random_four_numbers = random_12_numbers()
  second_random_four_numbers = random_12_numbers()
  third_random_four_numbers = random_12_numbers()

  return "#{first_random_four_numbers}-#{second_random_four_numbers}-#{third_random_four_numbers}"
end
