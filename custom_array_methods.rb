class Array
	def custom_select
		return unless block_given?
		new_arr = []
		self.each {|a| new_arr << a if yield(a)}
		new_arr
	end

	def custom_find
		return unless block_given?
		new_arr = []
		self.each do |a|
			new_arr << a if yield(a)
		end
		new_arr.first
	end
end

arr = [1,2,3,4]

puts arr.custom_select {|a| a>2}

puts arr.custom_find {|a| a > 2}