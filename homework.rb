VARIANT = 17

  def rand_int
    #generate random number
    rand(10).to_s
  end

  def rand_char
    #generating random letter
    (65 + rand(26)).chr.to_s
  end

  def generate
  # put your solution here (delete the line below)
  #template "1XC1-A11D-1CDVB-123"
  rand_int + rand_char + rand_char + rand_int + "-" + #1XC1-
  rand_char + rand_int + rand_int + rand_char + "-"+ #A11D-
  rand_int + rand_char + rand_char + rand_char + rand_char + "-"+ #1CDVB-
  rand_int + rand_int + rand_int #123
  end
