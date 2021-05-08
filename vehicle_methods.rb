class Vehicle

  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def milage
    return @odometer / @gas_used
  end

end

class Car < Vehicle
end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(content)
    puts "Securing #{content} in teh truck bed."
    @cargo = content
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turns the front wheel."
  end
end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bouncing balls")
puts "The truck is carrying #{truck.cargo}"

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.milage