class Book
  attr_accessor :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end

  # def readBook()
  #   puts "Reading #{self.title} by #{@author}"
  # end
end

book1 = Book.new("Maximum Ride", "IDK")
puts book1.title
book1.title = "Captain Underpants"
pp book1.title

class Car
  attr_accessor :make, :model, :year
  def initialize(make, model, year)
	  @make = make
	  @model = model
	  @year = year
  end
end

car = Car.new("toyota", "camry", 2021)
pp car.make
car.make = "ford"
pp car.make
