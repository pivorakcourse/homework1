VARIANT = 18
# "AA21-ACBD-CD-VB-123AB"
def generate
	alphabet = ('A'..'Z').to_a
	[alphabet.sample(2).join + rand(0..99).to_s.rjust(2, '0'), alphabet.sample(4).join, alphabet.sample(2).join,
	 alphabet.sample(2).join, rand(0..999).to_s.rjust(3, '0') + alphabet.sample(2).join].join('-')
end
