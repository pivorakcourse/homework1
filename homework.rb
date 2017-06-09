VARIANT = 6

def generate
  first_part = rand(10..99).to_s
  second_part = rand(1000000..9999999).to_s
  third_part = ("A".."Z").to_a.sample(3).join

  "#{first_part}-#{second_part}-#{third_part}"
end
