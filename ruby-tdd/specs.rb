require 'rspec'

require_relative 'app'




describe ‘Palindrome’ do
	describe class methods” do
		describe “.palindrome” do
			it “is wired together correctly” do
				expect(Palindrome.new.class).to eq Palindrome
			end
		end
	end
end