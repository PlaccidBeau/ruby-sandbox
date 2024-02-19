class Car
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    # we use 'self' here (instead of @) to refer to our custom setter method for make
    # this way it will be capitalized during initialization
    self.make = make
    self.model = model
    self.year = year
  end

  def make=(value)
    # to be prevent errors, we only allow make to be a String
    unless value.is_a?(String)
    raise TypeError, 'Car make must be a string'
    end
    @make = value.capitalize
  end

  def model=(value)
    # to be prevent errors, we only allow model to be a String
    unless value.is_a?(String)
    raise TypeError, 'Car model must be a string'
    end
    @model = value.capitalize
  end

  def year=(value)
    # to be prevent errors, we only allow year to be a String
    unless value.is_a?(Integer)
    raise TypeError, 'Car year must be a Integer'
    end
    @year = value
  end
end

car = Car.new("Ford", "Fusion", 2014)
pp car.make # "Ian"
pp car.model # "Ian"
pp car.year # "Ian"
car.model = "Dodge"
pp car.model
car.make = "Charger"
pp car.make # "Ian"
