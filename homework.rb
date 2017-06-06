VARIANT = 1

def generate 
  i, j, k = rand(1000...10000), rand(1000...10000), rand(1000...10000)
  
   "#{i}" + "-" + "#{j}" + "-" + "#{k}"
end
