def total(prices)
  amount = 0
  prices.each { |price| amount += price }
  amount
end

def refund(prices)
  amount = 0
  prices.each { |price| amount -= price}
  amount
end

def show_discounts(prices)
  index = 0
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your dicount: $%.2f", amount_off)
  end
end


prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))

puts format("%.2f", refund(prices))

show_discounts(prices)
