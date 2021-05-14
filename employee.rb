class Employee
  attr_reader :name, :salary

  def name=(value)
    if value == ""
      raise "That name is blank"
    end
    @name = value
  end

  def salary= (value)
    if value < 0
      raise "That is a negivtive number"
    end
    @salary = value
  end

  def initialize(name = "Anonymous", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}."
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(salary = 0.0)
    self.salary = salary
  end

  def salary= (value)
    if value < 0
      raise "Salary can't be a negitive number"
    end
    @salary = value
  end

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}."
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def initialize(hourly_wage = 0.0, hours_per_week = 0.0)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def hourly_wage= (value)
    if hourly_wage < 0
      raise "Number can't be negitive"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week= (value)
    if hours_per_week < 0 
      raise "Number can't be negitive"
    end
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (hourly_wage * hours_per_week) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}."
  end
end



