VARIANT = 1
# "1234-5678-1234"
def generate
  # put your solution here (delete the line below)
  First_Part, Second_Part, Third_Part =3.times.map {rand(1000...9999).to_s }
  "#{First_Part}" - "#{Second_Part}" - "#{Third_Part}"
end
