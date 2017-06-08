VARIANT = 13

def generate
  "#{part_of_string(6)}-#{part_of_string(6, 'numeric')}-#{part_of_string(4, 'numeric')}"
end

def part_of_string(size, type='string')
  range = (type == 'string') ? ('A'..'Z') : (0..9)
  part  = ''

  size.times do
    part += range.to_a.sample().to_s
  end

  part
end
