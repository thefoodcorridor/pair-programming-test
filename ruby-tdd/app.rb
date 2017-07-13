class Palindrome
  def self.palindrome(string)
    return false unless  string.class == String
    string = string.downcase.strip
    return false if string == ""
    return true if string == string.reverse
	  false
  end
end
