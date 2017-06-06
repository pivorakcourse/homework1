VARIANT = 20

def generate
  two_numbers = rand(10...100).to_s
  four_letters = ("A".."Z").to_a.sample(4).join("")
  five_digit_number = rand(10000..99999).to_s
  two_numbers + "-" + rand(0..9).to_s + four_letters + "-" + five_digit_number +
                                                "-" + four_letters + two_numbers
end
