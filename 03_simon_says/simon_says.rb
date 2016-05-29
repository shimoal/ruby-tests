def echo (string)
	 string
end

def shout (string)
	string.upcase
end

def repeat (words, a=2)
 repeats = ' '
 repeats = words.to_s + ' ' +  words.to_s
 while a > 2
 repeats = repeats + ' ' + words.to_s
 a -= 1
 end
 repeats
end

def start_of_word (word, a)
 x = 0
 start = ''
 while x < a
 		start = start +  word[x].to_s
 x += 1
 end
 return start
end

def first_word (sentence)
	word_array = sentence.split
	return word_array[0]
end

def titleize (original)
 words = original.split
 x = 1
 title = words[0].capitalize.to_s
 
 while x < words.length
 	if words[x] == 'over'  then
 		title = title + ' ' + words[x]
 	elsif words[x] == 'and' then
 		title = title + ' ' + words[x]
 	elsif words[x] == 'the' then
 		title = title + ' ' + words[x]
 	elsif words[x] == 'of' then
 		title = title + ' ' + words[x]
 	elsif words[x] == 'for' then
 		title = title + ' ' + words[x]
 	else
 		title = title + ' ' + words[x].capitalize
 	end
 	x +=1
 end
 
 return title
end
