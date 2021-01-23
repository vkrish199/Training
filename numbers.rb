class Numbers
	CONST_VAR_NUM = 10
	@@class_var_num = 5
	def initialize(local_var_num)
		@local_var_num_inst = local_var_num
		@inst_var_num = 10
	end

	def add_nums
		puts CONST_VAR_NUM + @@class_var_num + @inst_var_num + @local_var_num_inst
	end
end

numbers = Numbers.new(5)
numbers.add_nums