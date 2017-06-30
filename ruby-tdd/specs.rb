require 'rspec'

require_relative 'app'

describe 'the programming test' do
	it 'abc is not a palindrome' do
		expect(Palindrome.palindrome("abc")).to eq(false)
	end
	it 'abcba is not a palindrome' do
		expect(Palindrome.palindrome("abcba")).to eq(true)
	end
	it 'Racecar is a palindrome' do
		expect(Palindrome.palindrome("Racecar")).to eq(true)
	end
end
