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
end