class Rectangle

	attr_accessor :area
	attr_writer :length, :breadth

	def initialize
		@length = nil
		@breadth = nil
		@area = nil
	end

	def compute_area
		@area = @length*@breadth
	end

end

rectangle = Rectangle.new

rectangle.length = 10
rectangle.breadth = 20

rectangle.compute_area

puts rectangle.area
