class Vehicle

	def initialize(no_of_tyres, seats)
		@no_of_tyres = no_of_tyres
		@seats = seats
	end

	protected

	def protected_test(vehicle)
		puts "Your #{vehicle} has #{@no_of_tyres} tyres and #{@seats} seats and is moving"
	end

	private

	def private_test
		puts "Vehicle tracker:"
	end
end

class Car < Vehicle

	def initialize(no_of_tyres, seats)
		super
	end

	def moves
		private_test
		self.protected_test("car")
	end


end

class Bike < Vehicle

	def initialize(no_of_tyres, seats)
		super
	end

	def moves
		private_test
		self.protected_test("bike")
	end
end


car = Car.new(4, 5)
car.moves

bike = Bike.new(2,2)
bike.moves
