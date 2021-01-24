class DivisionErrorException < ZeroDivisionError
	attr_reader :reason
	def initialize(reason)
		@reason = reason
		puts @reason
	end
end


def test
	n = 0
	begin 
		raise DivisionErrorException, "Divide by zero" if n == 0
		r = 2/n
		puts r
	rescue Exception => e
		puts e
	end
end

puts test
