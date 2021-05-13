require "./user.rb"
require "./product.rb"
require "./greengrocer.rb"

DISCOUNT_RATE = 0.2

products_params = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

products = []
products_params.each do |param|
  products << Product.new(param)
end


greengrocer = Greengrocer.new(products)
user = User.new

greengrocer.disp_products
chosen_product = user.choose_product(products)
greengrocer.ask_quantity(chosen_product)
quantity_of_product = user.decide_quantity
greengrocer.calc_total_price(chosen_product, quantity_of_product)

