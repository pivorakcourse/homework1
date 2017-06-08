VARIANT = 14

def generate
  form = rand(100000...999999).to_s + '-' + rand(1000...9999).to_s + '-' + ('AAAA'...'ZZZZ').to_a.sample
  print "#{form}\n"
  form
end
