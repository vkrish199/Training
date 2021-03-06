class Polygon

	attr_reader :area

	def initialize
		@area = 0
	end
	
	private

	def compute_area
		puts "Computing the area of polygon"
	end
end

class Square < Polygon

	attr_writer :side

	def initialize
		super
		@side = 0
	end

	def compute_area
		super
		@area = 4*@side
	end

	def self.properties
		puts "Square has 4 equal sides and the area is side^2"
	end
end

class Rectangle < Polygon

	attr_writer :length, :breadth

	def initialize
		super
		@length = 0
		@breadth = 0
	end

	def compute_area
		super
		@area = @length * @breadth
	end

	def self.properties
		puts "Rectangle has 4 sides and the area is lenght*breadth"
	end
end

class Triangle < Polygon

	attr_writer :base, :height

	def initialize
		super
		@base = 0
		@height = 0
	end

	def compute_area
		super
		@area = 0.5*@base*@height
	end

	def self.properties
		puts "Triangle has 3 sides and the area is base*height/2"
	end
end


Square.properties
Rectangle.properties
Triangle.properties


square = Square.new
square.side = 10
square.compute_area
puts "Area of square is #{square.area}"

rectangle = Rectangle.new
rectangle.length = 10
rectangle.breadth = 20
rectangle.compute_area
puts "Area of rectangle is #{rectangle.area}"

triangle = Triangle.new
triangle.base = 10
triangle.height = 20
triangle.compute_area
puts "Area of triangle is #{triangle.area}"
