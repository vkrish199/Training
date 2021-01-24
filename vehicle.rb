class Vehicle

	def initialize(no_of_tyres, seats)
		@no_of_tyres = no_of_tyres
		@seats = seats
	end

	protected

	def protected_test(vehicle)
		puts "Below is your #{vehicle} info"
	end
end

class Car < Vehicle

	def initialize(no_of_tyres, seats)
		super
	end

	def moves
		protected_test("car")
		puts "Car has #{@no_of_tyres} tyres and #{@seats} seats and moving"
	end


end

class Bike < Vehicle

	def initialize(no_of_tyres, seats)
		super
	end

	def moves
		protected_test("bike")
		puts "Bike has #{@no_of_tyres} tyres and #{@seats} seats and moving"
	end
end


car = Car.new(4, 5)
car.moves

bike = Bike.new(2,2)
bike.moves
