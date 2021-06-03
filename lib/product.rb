class Product
  attr_reader :name, :price

  def initialize(product_param)
    @name = product_param[:name]
    @price = product_param[:price]
  end
end
