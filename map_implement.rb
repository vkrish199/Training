class Array
	def custom_map
		return unless block_given?
		self.each_with_index {|a,i| self[i] = yield(a)}
	end
end

arr = [1,2,3]
arr.custom_map {|a| puts a*2}