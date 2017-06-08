VARIANT = 1
# "1234-5678-1234"
def generate
  # put your solution here (delete the line below)
  a, b, c = rand(1000...9999), rand(1000...9999), rand(1000...9999)
  "#{a}" + "-" + "#{b}" + "-" + "#{c}"
end
