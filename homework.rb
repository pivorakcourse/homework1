VARIANT = 7

def generate
  # put your solution here (delete the line below)
  letters = ['A'..'Z'].map(&:to_a).flatten
  string = []

  2.times do |i|
    i = (0..2).map { letters[rand(letters.length)] }.join
    string << i
  end

  string[0] + '-' + rand(1000000..9999999).to_s + '-' + string[1]

end
