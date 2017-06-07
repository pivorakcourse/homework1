VARIANT = 19

def generate
  [
    rand(10..99),
    ('a'..'z').to_a.sample(2).join,
    rand(1..9),
    ('a'..'z').to_a.sample(4).join,
    rand(100..999),
    ('a'..'z').to_a.sample(2).join
  ].join('-').upcase
end
