# shirt1 = {size: "small", color: "blue", price: 30}
# shirt2 = {:size => "medium", :color => "black", :price => 40}
# shirt3 = {size: "large", color: "grey", price: 50}

# p "The #{shirt1[:size]} shirt is #{shirt1[:color]}, and it costs $#{shirt1[:price]}."
# p shirt3[:color]

class Shirt
  attr_reader :size, :color, :price
  attr_writer :size, :color, :price

  def initialize(input_options)
    @size = input_options[:size]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def info
    p "The #{@size} shirt is #{@color} and it is $#{@price}."
  end

  def sales_tax
    @price *= 1.06
  end
  
end

shirt1 = Shirt.new(size: "large", color: "black", price: 20)
p shirt1.size
p shirt1.color
p shirt1.price
shirt1.sales_tax
p shirt1.price