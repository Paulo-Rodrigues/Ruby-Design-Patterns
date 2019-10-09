class Person
  attr_reader :age

  def initialize(age)
    @age = age
  end

  def drive
    "Driving"
  end

  def drink
    "drinking"
  end

  def drive_and_drink
    "Driving while drinking"
  end
end

class ResponsiblePersonProxy
  def initialize(person)
    @person = person
  end

  def drive
    if @person.age < 16
      "too young"
    else
      @person.drive
    end
  end

  def drink
    if @person.age < 18
      "too young"
    else
      @person.drink
    end
  end

  def drive_and_drink
    "dead"
  end
end
