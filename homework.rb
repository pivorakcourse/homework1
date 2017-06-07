VARIANT = 15

# Run test 100 times to ensure that there is no duplicates:
#   for i in {0..100};do ruby test/homework_test.rb | grep failures| grep -v '0 failures';done
# It should fit this pattern "123456-ZXCE-ABCD"
def generate
  rand(100000...999999).to_s + '-' + (("A".."Z").to_a).sample(4).join + '-' + (("A".."Z").to_a).sample(4).join
end
