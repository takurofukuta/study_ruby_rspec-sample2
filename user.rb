class User
  attr_reader :chosen_product, :quantity_of_product
  def choose_product(products)
    while true
      print "商品の番号を選択 > "
      selected_product_num = gets.to_i
      break if (1..products.length).include?(selected_product_num)
        puts "正しい商品番号を選択してください"
    end
    @chosen_product = products[selected_product_num - 1]
  end  

  def decide_quantity
    while true
      print "商品の個数を選択 > "
      @quantity_of_product = gets.to_i
      break if @quantity_of_product >= 1
        puts "一個以上選択してください"
    end
  end
end
