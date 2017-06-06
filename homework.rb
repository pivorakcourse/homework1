VARIANT = 7

def generate
  # put your solution here (delete the line below)
  letters = ['A'..'Z'].map(&:to_a).flatten
  string1 = (0...3).map { letters[rand(letters.length)] }.join
  string2 = (0...3).map { letters[rand(letters.length)] }.join
  string1 + '-' + rand(0..9999999).to_s + '-' + string2
end
