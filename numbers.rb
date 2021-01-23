class Numbers
	CONST_VAR_NUM = 10
	@@class_var_num = 5
	def initialize(local_var)
		@inst_var_num = local_var
	end

	def add_nums(local)
		puts CONST_VAR_NUM + @@class_var_num + @inst_var_num + local
	end
end

numbers = Numbers.new(5)
numbers.add_nums(10)
