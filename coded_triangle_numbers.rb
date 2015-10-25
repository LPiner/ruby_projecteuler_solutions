letters = 'abcdefghijklmnopqrstuvwxyz'.split('')
p letters
words = File.readlines('p042_words.txt', 'r+')
words = words[0].gsub("\"", '')
words = words.split(',')

words.each do |word|
	value = 0
	word = word.split('')
	word.each do |char|
		value += letters.index(char.downcase) + 1		

	end
	p value

end
