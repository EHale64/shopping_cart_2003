require './lib/product'
class ShoppingCart
  attr_reader :name , :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def capacity
    @capacity.to_i
  end

  def add_product(product)
    @products << product
  end

  def number_of_products
  @products.map {|product| product.quantity}
  end

  def total_number_of_products
    number_of_products.sum
  end

  def is_full?
    if total_number_of_products > capacity
      true
    else
      false
    end
  end
end
