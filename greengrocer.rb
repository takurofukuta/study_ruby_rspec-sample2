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
