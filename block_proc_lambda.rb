def multiply_block
	n = 5
	puts "Block output"
	yield(n)
end

def proc_method(multiply_proc)
	nums = [1,2,3]
	puts "Proc output"
	nums.map {|n| multiply_proc.call(n)}
end

def lambda_method(multiply_lambda)
	nums = [1,2,3]
	puts "Lambda output"
	puts multiply_lambda.call(nums)
end

multiply_block {|num| puts num*2}

multiply_proc = proc {|num| puts num*2}

multiply_lambda = -> (num_arr) {return num_arr.map {|num| num*2}}

proc_method(multiply_proc)

lambda_method(multiply_lambda)