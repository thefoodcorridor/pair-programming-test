require "./app"
require "rspec"

class Palindrome
  def self.palindrome(string)
    return false unless  string.class == String
    string = string.downcase.strip
    return false if string == ""
    return true if string == string.reverse
	  false
  end
end


describe "Palindrome" do
  it "it exists" do
    expect(Palindrome.new.class).to eq Palindrome
  end
  describe ".palindrome" do
    it "returns true for A" do
      expect(Palindrome.palindrome("A")).to be true
    end
    it "returns for Aa" do
      expect(Palindrome.palindrome("A")).to be true
    end
    it "handles hyphenated words" do
      expect(Palindrome.palindrome("a-a")).to be true
    end
    it "returns false for a blank string" do
      expect(Palindrome.palindrome("")).to be false
    end
    it "empty spaces return false" do
      expect(Palindrome.palindrome(" ")).to be false
    end
    it "removes newline character and checks the word accordingly" do
      expect(Palindrome.palindrome("racecar\n")).to be true
    end
    it "returns false if it gets passed an Integer" do
      expect(Palindrome.palindrome(1)).to be false
    end
    it "returns false if it gets passed a Nil" do
      expect(Palindrome.palindrome(nil)).to be false
    end
  end
end
