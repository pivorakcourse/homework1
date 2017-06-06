require 'minitest/autorun'
require './homework'

class HomeworkTest < Minitest::Test

  RR = [ %r(\d+),
         %r(\d{4}-\d{4}-\d{4}),  # 1 "1234-5678-1234"
         %r(\d{4}-[A-Z]{4}-\d{4}), # 2 "1234-ABCD-1234"
         %r([A-Z]{4}-\d{4}-[A-Z]{4}), # 3 "ASDF-1234-ASDF"
         %r([A-Z]{2}\d{2}-\d{4}-[A-Z]{2}\d{2}), # 4 "AS12-1234-AS11"
         %r([A-Z]-\d{7}-[A-Z]{3}), # 5 "AS-1234567-ABC"
         %r(\d{2}-\d{7}-[A-Z]{3}), # 6 "12-1234567-ABC"
         %r([A-Z]{3}-\d{7}-[A-Z]{3}), # 7 "ABC-1234567-ABC"
         %r([A-Z]{3}-\d{3}-[A-Z]{3}-\d{3}), # 8 "QWE-123-RTY-987"
         %r(\d{3}-[A-Z]{3}-[A-Z]{3}-\d{3}), # 9 "123-ABC-RTY-987"
         %r(\d{3}-[A-Z]{3}-\d{3}-[A-Z]{3}), # 10 "123-ABC-987-ABC"
         %r((?:[A-Z]{3}-){3}\d{3}), # 11 "ABC-ABC-ABC-123"
         %r([A-Z]{6}-\d{6}-\d{2}), # 12 "ABCDEF-123456-98"
         %r([A-Z]{6}-\d{6}-\d{4}), # 13 "ABCDEF-123456-1234"
         %r(\d{6}-\d{4}-[A-Z]{4}), # 14 "123456-1234-ABCD"
         %r(\d{6}-[A-Z]{4}-[A-Z]{4}), # 15 "123456-ZXCE-ABCD"
         %r([A-Z]{4}-[A-Z]{4}-\d{5}-\d{5}), # 16 "ZXCE-ABCD-12345-12345"
         %r(\d[A-Z]{2}\d-[A-Z]\d{2}[A-Z]-\d[A-Z]{4}-\d{3}), # 17 "1XC1-A11D-1CDVB-123"
         %r([A-Z]{2}\d{2}-[A-Z]{4}-(?:[A-Z]{2}-){2}\d{3}[A-Z]{2}), # 18 "AA21-ACBD-CD-VB-123AB"
         %r(\d{2}-[A-Z]{2}-\d-[A-Z]{4}-\d{3}-[A-Z]{2}), # 19 "11-AD-1-CDVB-123-AB"
         %r(\d{2}-\d[A-Z]{4}-\d{5}-[A-Z]{4}\d{2}) # 20 "11-1CDVB-12345-ABCD11"
  ]

  describe "global checking" do

    it "returns a string" do
      generate.must_be_kind_of String
    end

    it "should be separated with dashes" do
      generate.must_match /-/
    end

    it "returns 1000 unique values on each call and they are not succeeded" do
      gen = []
      1.upto(1000).each do |x|
        gen << generate
      end
      (-gen.size).upto(-1).each do |x|
        gen[x].succ.wont_equal gen[x + 1]
        gen[x].succ.succ.wont_equal gen[x + 1]
      end
      gen.uniq.must_equal gen
    end
  end

  describe "variants" do
    it "should match the variant condition" do
      generate.must_match RR[VARIANT]
    end
  end
end
