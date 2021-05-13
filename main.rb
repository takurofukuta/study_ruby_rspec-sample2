products = [
{name: "トマト", price: 100},
{name: "きゅうり", price: 200},
{name: "玉ねぎ", price: 300},
{name: "なす", price: 400}
]

DISCOUNT_RATE = 0.2

products.each.with_index(1) do |product, i|
  puts "#{i}.#{product[:name]} #{product[:price]}円"
end

print "商品の番号を選択 >"
selected_product_num = gets.to_i
chosen_product = products[selected_product_num - 1]

print "#{chosen_product[:name]}ですね。何個買いますか？ >"

quantity_of_product = gets.to_i
total_price = chosen_product[:price] * quantity_of_product

if quantity_of_product >= 5
  total_price *= (1 - DISCOUNT_RATE)
  puts "5個以上なので割引です"
end
puts "合計で#{total_price.floor}円です"
