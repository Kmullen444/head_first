class Animal

  attr_reader :name, :age

  def name= (value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age= (value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}!"
  end

  def talk 
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dogm age #{@age}."
  end 
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Mewo!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end


