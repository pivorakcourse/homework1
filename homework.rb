VARIANT = 17

  def generate
  # put your solution here (delete the line below)
  #template "1XC1-A11D-1CDVB-123"

  rand(10).to_s+(65 + rand(26)).chr.to_s+(65 + rand(26)).chr.to_s+rand(10).to_s+"-"+ #1XC1-
  (65 + rand(26)).chr.to_s+rand(10).to_s+rand(10).to_s+(65 + rand(26)).chr.to_s+"-"+ #A11D-
  rand(10).to_s+(65 + rand(26)).chr.to_s+(65 + rand(26)).chr.to_s+
  (65 + rand(26)).chr.to_s+(65 + rand(26)).chr.to_s+"-"+ #1CDVB-
  rand(10).to_s+rand(10).to_s+rand(10).to_s #123

end
