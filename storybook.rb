class Bird
  def talk (name) 
    puts "#{name} says Chirp! Chirp"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Dog
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end
      
  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end

class Cat
  def talk (name) 
    puts "#{name} says Meow!"
  end

  def move(name, destination)
    puts "#{name} runs to the #{destination}."
  end
end


dog = Dog.new
dog_name = "Lucy"
dog.talk(dog_name)
dog.move(dog_name, "fence")

cat = Cat.new
cat_name = "Fluffly"
cat.talk(cat_name)
cat.move(cat_name, "litter box")