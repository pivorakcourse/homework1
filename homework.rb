VARIANT = 2

def generate
	"#{digits}-#{letters}-#{digits}"
end

def digits
	rand(1000..9999).to_s
end

def letters
	letters, letter, i = ("A".."Z").to_a, "", 0

	while i < 4 do
		i += 1
		letter += letters[rand letters.length]
	end
	
	letter
end