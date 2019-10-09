class Person
    def initialize(id, name)
        @id = id
        @name = name
    end
end

class PersonFactory

    @@person_id = 0

    def create_person(name)
        person = Person.new(@@person_id, name)
        @@person_id += 1
        person
    end
end

p1 = Person.new.create_person('Paulo')
p2 = Person.new.create_person('Jon Snow')