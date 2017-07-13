
class Palindrome
  def self.palindrome(string)
	string = string.downcase
    return true if string == string.reverse
	false
  end
end
