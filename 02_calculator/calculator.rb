def add (a, b)
	a + b
end

def subtract (a, b)
	a - b
end


def sum (array)
	current_sum = 0
	array.each do |item|
			current_sum += item
	end
	return current_sum
end

def multiply (array)
	total = 1
	array.each do |item|
		total = total * item 
		end
		return total
end

def power (a, b)
		result = a
	while b > 1 do
 result = (result * a)
	b -= 1
	end
	return result
end
