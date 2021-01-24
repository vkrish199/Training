class Polygon

	attr_reader :area

	def initialize
		@side = 0
		@length = 0
		@breadth = 0
		@base = 0
		@height = 0
		@area = 0
	end
	
	private

	def compute_area(polygon)
		puts "Computing the area of polygon"
	end
end

class Square < Polygon

	attr_writer :side

	def initialize
		super
	end

	def compute_area
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
	end

	def compute_area
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
	end

	def compute_area
		@area = 0.5*@base*@height
	end

	def self.properties
		puts "Triangle has 3 sides and the area is base*height/2"
	end
end

square = Square.new
square.side = 10
square.compute_area

Square.properties
puts "Area of square is #{square.area}"


rectangle = Rectangle.new
rectangle.length = 10
rectangle.breadth = 20
rectangle.compute_area

Rectangle.properties
puts "Area of rectangle is #{rectangle.area}"

triangle = Triangle.new
triangle.base = 10
triangle.height = 20
triangle.compute_area

Triangle.properties
puts "Area of triangle is #{triangle.area}"
