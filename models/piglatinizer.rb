require 'pry'
class PigLatinizer



	def initialize
		@vowels = ["a", "e", "i", "o", "u"]
	end

	def piglatinize(text)
		if @vowels.include?(text[0].downcase)
			text + "way"
		else
			first_vowel = text.split("").find {|letter| @vowels.include?(letter)}
			first_letters = text.split(first_vowel)[0]
			middle_letters = text[text.index(first_vowel), text.length]
			middle_letters + first_letters + "ay"
		end
	end

	def to_pig_latin(text)
		words = text.split(" ")
		words.map do |word|
			piglatinize(word)
		end.join(" ")
	end
end