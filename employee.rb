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
    pay_for_period = (@salary / 365) * 14
    puts "Pay for this period: $#{pay_for_period}."
  end
end