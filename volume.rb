class Cylinder
	PI_VAL = 3.14
	def initialize(radius, height)
		@radius = radius
		@height = height
	end

	def compute_volume
		vol = PI_VAL * (@radius ** 2) * @height
		puts "Volume of the given cylinder is #{vol}"
	end
end

cylinder = Cylinder.new(10,20)
cylinder.compute_volume