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

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}."
  end
end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub