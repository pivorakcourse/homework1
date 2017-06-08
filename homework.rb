VARIANT = 17

  def generate
  # put your solution here (delete the line below)
  #template "1XC1-A11D-1CDVB-123"
  rand_int = lambda{|x| (1..9).to_a.sample(x).join.to_s} #generate random number
  rand_char = lambda{|x| ("A".."Z").to_a.sample(x).join}  #generating random letter
  one = rand_int.call(1) + rand_char.call(2) + rand_int.call(1) #1XC1
  two = rand_char.call(1) + rand_int.call(2) + rand_char.call(1) #A11D
  three = rand_int.call(1) + rand_char.call(4) #1CDVB
  four = rand_int.call(3) #123
  "#{one}-#{two}-#{three}-#{four}"
  end
