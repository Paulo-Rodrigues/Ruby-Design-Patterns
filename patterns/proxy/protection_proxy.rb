class Car
  def initialize(driver)
    @driver = driver
  end

  def drive
    "the car is be driven by #{@driver.name}"
  end
end

class Driver
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class CarProxy
  def initialize(driver)
    @driver = driver
    @car = Car.new(@driver)
  end

  def drive
    if @driver.age < 18
      "Driver is too young"
    else
      @car.drive
    end
  end
end
