def name_letter_value(name)
	alph = 'abcdefghijklmnopqrstuvwxyz'
	name = name.downcase
	name = name.split('')
	c = 0
	name.each do |l|
		c += alph.index(l) + 1
	end
	c
end
def main
	names = File.readlines('names.txt','r')
	names = names[0]
	names = names.gsub('"','')
	names = names.gsub("\n",'')
	names = names.split(',')
	names = names.sort
	total = 0
	names.each do |name|
		total += (names.index(name) + 1) * name_letter_value(name)
	end
	p total
end
main
