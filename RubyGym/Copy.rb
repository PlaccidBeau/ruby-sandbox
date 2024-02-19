class Car
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    # TODO: initialize attributes
	  self.make = make
	  self.model = model
	  self.year = year
  end

  # TODO: Custom setters for make, model, and year
	def make=(value)
		unless value.is_a?(String)
		raise TypeError, 'Car make must be a string'
		end
		@make = value.capitalize
  end
	def model=(value)
		unless value.is_a?(String)
		raise TypeError, 'Car model must be a string'
		end
		@model = value.capitalize
  end
	def year=(value)
		unless value.is_a?(Integer)
		raise TypeError, 'Car year must be an integer'
		end
		@year = value
  end
end

# Test your Car class
car = Car.new("toyota", "camry", 2021)
pp car.make
pp car.model
pp car.year

# Change and then print the make
car.make = "ford"
pp car.make

# Change and then print the model
car.model = "explorer"
pp car.model

# Change and then print the year
car.year = 2022
pp car.year
