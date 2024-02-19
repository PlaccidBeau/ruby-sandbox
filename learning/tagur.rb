class Car
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    self.year = year
    @make = make.capitalize
    @model = model.capitalize
  end

  def year=(value)
    unless value.is_a?(Numeric)
      raise TypeError, 'Year must be a integer'
    end

    @year = value
  end
  def make=(value)
    @make = value.capitalize
  end
  def model=(value)
    @model = value.capitalize
  end

  # TODO: do the same for :model
end

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
