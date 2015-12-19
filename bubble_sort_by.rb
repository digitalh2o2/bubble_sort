def bubble_sort_by(array)
	n = array.length
	loop do 
		swapped = false

		(n-1).times do |i|
			if yield(array[i], array[i+1]) < 0
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

puts (bubble_sort_by(["Hello","jigglewiggle", "Hi", "Haaay",]) do 
	|left, right| right.length - left.length 
end)