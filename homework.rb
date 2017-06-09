VARIANT = 1

def random_4_numbers 
  rand(1000..10000)
end

def generate 
  "#{random_4_numbers }-#{random_4_numbers }-#{random_4_numbers }"
end
