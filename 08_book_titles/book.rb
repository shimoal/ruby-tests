def articles 
	%w[the a an]
end

def conjunctions
	%w[and but if or yet for nor so]
end

def prepositions
	%w[at by from in of on to with]
end

class Book

	def title=(s)
	
		all_words = Array.new
		all_words = s.split
		word2 = ''
		new_title = []
		
		all_words.each do |word|
			if word == all_words[0] 							#if it's the first word, always capital
				word2 = word.capitalize
				all_words[0]= 'filled' 							#changes the first word of the title, in case of repeats (ie The Man in the Moon)
			elsif articles.include?(word) 				#if it's an article, keep it the same
				word2 = word
			elsif conjunctions.include?(word) 		#if it's a conjuction, keep it the same
				word2 = word
			elsif prepositions.include?(word)		 	#if it's a preposition, keep it the same
				word2 = word
			else                                  #other case: not the first word, not article, conjunction, or preposition: capital
				word2 = word.capitalize
		
			end
			new_title.push(word2)									#add the word to the array
		end
		@title = new_title.join(' ')
	end

	def title
		@title
	end

end
