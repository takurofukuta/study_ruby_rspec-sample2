DISCOUNT_RATE = 0.2

class Product
  attr_reader :name, :price
  def initialize(product_param)
    @name = product_param[:name]
    @price = product_param[:price]
  end
end

class Greengrocer
  attr_reader :products
  def initialize(products)
    @products = products
  end

  def disp_products
    puts "いらっしゃいませ。商品を選んでください"
    @products.each.with_index(1) do |product, i|
      puts "#{i}.#{product.name} #{product.price}円"
    end
  end

  def ask_quantity(chosen_product)
    print "#{chosen_product.name}ですね。何個買いますか？"
  end

  def calc_total_price(chosen_product, quantity_of_product)
    total_price = chosen_product.price * quantity_of_product
    if quantity_of_product >= 5
      total_price *= (1 - DISCOUNT_RATE)
      puts "5個以上なので割引です"
    end
  puts "合計で#{total_price.floor}円です"
  end
end


class User
  def choose_product(products)
    while true
      print "商品の番号を選択 > "
      selected_product_num = gets.to_i
      break if (1..products.length).include?(selected_product_num)
        puts "正しい商品番号を選択してください"
    end
    chosen_product = products[selected_product_num - 1]
  end  

  def decide_quantity
    while true
      print "商品の個数を選択 > "
      quantity_of_product = gets.to_i
      break if quantity_of_product >= 1
        puts "一個以上選択してください"
    end
    quantity_of_product
  end
end

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

