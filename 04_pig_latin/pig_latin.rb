def vowels
	%w[aeiou]
end

def cons
	%w[bcdfghjklmnpqrstvwxyz]
end


def translate (original)
array = original.split
translated_words = Array.new
translated_sentence = ''
pig_word = ''
	#array.each will go through the array to do each word at a time
	array.each do |word|
		if word[0] == 'q' then #for 'qu' as one sound
			pig_word = word[2..-1]+'quay'
		elsif  vowels.include?(word[0])  then #for the vowels
			pig_word = word + 'ay'
		elsif (cons.include?(word[0]) and cons.include?(word[1])) then 
				if (vowels.include?(word[2])) and (word[1] != 'q') then			#for two consonants at the beginning, and checking for cons + qu
						pig_word = word[2..-1] + word[0..1] + 'ay' 
				else 
						pig_word = word[3..-1] + word[0..2] + 'ay' #for three consonants at the beginning, and cons + qu
				end
		else #for the one consonant words
			pig_word = word[1..-1] + word[0] + 'ay'
		end
		translated_words.push(pig_word)
	end
		translated_sentence = translated_words.join(' ') #join with spaces
return 	translated_sentence
end
